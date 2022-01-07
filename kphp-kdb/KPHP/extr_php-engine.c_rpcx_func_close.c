
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpcs_data {int * extra; } ;
struct connection {int dummy; } ;
typedef int php_worker ;


 struct rpcs_data* RPCS_DATA (struct connection*) ;
 int assert (int ) ;
 int has_pending_scripts () ;
 int lease_ready_flag ;
 int php_worker_main (int *) ;
 int php_worker_terminate (int *,int,char*) ;
 int run_rpc_lease () ;

int rpcx_func_close (struct connection *c, int who) {
  struct rpcs_data *D = RPCS_DATA(c);

  php_worker *worker = D->extra;
  if (worker != ((void*)0)) {
    php_worker_terminate (worker, 1, "rpc connection close");
    int res = php_worker_main (worker);
    D->extra = ((void*)0);
    assert ("worker is unfinished after closing connection" && res == 1);

    if (!has_pending_scripts()) {
      lease_ready_flag = 1;
      run_rpc_lease();
    }
  }

  return 0;
}
