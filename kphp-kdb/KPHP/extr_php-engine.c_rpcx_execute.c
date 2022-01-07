
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xpid ;
struct TYPE_2__ {int utime; int pid; int port; int ip; } ;
struct rpcs_data {int * extra; TYPE_1__ remote_pid; } ;
struct connection {int status; int pending_queries; int In; int fd; } ;
typedef int rpc_query_data ;
typedef int php_worker ;
typedef int npid_t ;


 int MAX_RPC_QUERY_LEN ;
 struct rpcs_data* RPCS_DATA (struct connection*) ;


 int SKIP_ALL_BYTES ;


 int assert (int) ;
 int conn_wait_net ;
 int do_rpc_start_lease (int ,scalar_t__) ;
 int do_rpc_stop_lease () ;
 int once_worker ;
 int * php_worker_create (int ,struct connection*,int *,int *,int ,long long) ;
 int php_worker_main (int *) ;
 scalar_t__ precise_now ;
 int read_in (int *,char*,int) ;
 int * rpc_query_data_create (int*,int,long long,int ,int ,int ,int ) ;
 int rpc_worker ;
 int rpcx_at_query_end (struct connection*) ;
 int run_once ;
 int script_timeout ;
 int set_connection_timeout (struct connection*,int ) ;
 scalar_t__ sigterm_on ;
 scalar_t__ sigterm_time ;
 int vkprintf (int,char*,long long,...) ;

int rpcx_execute (struct connection *c, int op, int len) {
  struct rpcs_data *D = RPCS_DATA(c);

  vkprintf (1, "rpcs_execute: fd=%d, op=%d, len=%d\n", c->fd, op, len);


  static char buf[126214400];

  if (sigterm_on && sigterm_time < precise_now) {
    return SKIP_ALL_BYTES;
  }
  npid_t xpid;

  switch (op) {
  case 128:
    do_rpc_stop_lease();
    break;
  case 129:
  case 131:
  case 130:
    if (len > 126214400) {
      return SKIP_ALL_BYTES;
    }

    assert (read_in (&c->In, buf, len) == len);
    assert (len % (int)sizeof (int) == 0);
    len /= (int)sizeof (int);
    if (len < 6) {
      return SKIP_ALL_BYTES;
    }

    int *v = (int *)buf;
    v += 3;
    len -= 4;

    if (op == 129) {
      if (len < 4) {
        return SKIP_ALL_BYTES;
      }
      assert (sizeof (xpid) == 12);
      xpid = *(npid_t *)v;
      v += 3;
      len -= 3;
      int timeout = *v++;
      len--;
      do_rpc_start_lease (xpid, precise_now + timeout);
      return 0;
      break;
    }

    long long req_id = *(long long *)v;
    v += 2;
    len -= 2;

    vkprintf (2, "got RPC_INVOKE_KPHP_REQ [req_id = %016llx]\n", req_id);
    set_connection_timeout (c, script_timeout);


    rpc_query_data *rpc_data = rpc_query_data_create (v, len, req_id, D->remote_pid.ip, D->remote_pid.port, D->remote_pid.pid, D->remote_pid.utime);

    php_worker *worker = php_worker_create (run_once ? once_worker : rpc_worker, c, ((void*)0), rpc_data, script_timeout, req_id);
    D->extra = worker;

    int res = php_worker_main (worker);
    if (res == 1) {
      rpcx_at_query_end (c);
    } else {
      assert (c->pending_queries >= 0 && c->status == conn_wait_net);
    }

    return 0;
    break;
  }

  return SKIP_ALL_BYTES;

}
