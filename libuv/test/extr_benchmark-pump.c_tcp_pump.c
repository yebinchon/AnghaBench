
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int MAX_WRITE_HANDLES ;
 int TARGET_CONNECTIONS ;
 int TCP ;
 int TEST_PORT ;
 int UV_RUN_DEFAULT ;
 int connect_addr ;
 int loop ;
 int maybe_connect_some () ;
 int type ;
 int uv_default_loop () ;
 scalar_t__ uv_ip4_addr (char*,int ,int *) ;
 int uv_run (int ,int ) ;

__attribute__((used)) static void tcp_pump(int n) {
  ASSERT(n <= MAX_WRITE_HANDLES);
  TARGET_CONNECTIONS = n;
  type = TCP;

  loop = uv_default_loop();

  ASSERT(0 == uv_ip4_addr("127.0.0.1", TEST_PORT, &connect_addr));


  maybe_connect_some();

  uv_run(loop, UV_RUN_DEFAULT);

  MAKE_VALGRIND_HAPPY();
}
