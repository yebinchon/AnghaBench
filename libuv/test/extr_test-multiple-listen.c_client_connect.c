
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_connect_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;


 int ASSERT (int) ;
 int TEST_PORT ;
 int client ;
 int connect_cb ;
 int * malloc (int) ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,struct sockaddr_in*) ;
 int uv_tcp_connect (int *,int *,struct sockaddr const*,int ) ;
 int uv_tcp_init (int ,int *) ;

__attribute__((used)) static void client_connect(void) {
  struct sockaddr_in addr;
  uv_connect_t* connect_req = malloc(sizeof *connect_req);
  int r;

  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &addr));
  ASSERT(connect_req != ((void*)0));

  r = uv_tcp_init(uv_default_loop(), &client);
  ASSERT(r == 0);

  r = uv_tcp_connect(connect_req,
                     &client,
                     (const struct sockaddr*) &addr,
                     connect_cb);
  ASSERT(r == 0);
}
