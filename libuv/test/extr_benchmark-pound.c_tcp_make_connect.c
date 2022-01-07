
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uv_tcp_t ;
struct TYPE_10__ {int conn_req; } ;
typedef TYPE_4__ tcp_conn_rec ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_9__ {TYPE_5__* data; } ;
struct TYPE_8__ {TYPE_5__* data; } ;
struct TYPE_7__ {TYPE_5__* data; } ;
struct TYPE_11__ {int i; TYPE_3__ stream; TYPE_2__ write_req; TYPE_1__ conn_req; } ;
typedef TYPE_5__ conn_rec ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int connect_cb ;
 int fprintf (int ,char*,char*) ;
 int loop ;
 int printf (char*,int) ;
 int stderr ;
 char* uv_err_name (int) ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_tcp_connect (int *,int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void tcp_make_connect(conn_rec* p) {
  struct sockaddr_in addr;
  tcp_conn_rec* tp;
  int r;

  tp = (tcp_conn_rec*) p;

  r = uv_tcp_init(loop, (uv_tcp_t*)&p->stream);
  ASSERT(r == 0);

  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &addr));

  r = uv_tcp_connect(&tp->conn_req,
                     (uv_tcp_t*) &p->stream,
                     (const struct sockaddr*) &addr,
                     connect_cb);
  if (r) {
    fprintf(stderr, "uv_tcp_connect error %s\n", uv_err_name(r));
    ASSERT(0);
  }





  p->conn_req.data = p;
  p->write_req.data = p;
  p->stream.data = p;
}
