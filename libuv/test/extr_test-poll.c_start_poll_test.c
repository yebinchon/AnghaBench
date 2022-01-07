
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WSAData {int dummy; } ;


 int ASSERT (int) ;
 int MAKEWORD (int,int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int NUM_CLIENTS ;
 int UV_RUN_DEFAULT ;
 int WSAStartup (int ,struct WSAData*) ;
 int closed_connections ;
 int disconnects ;
 int spurious_writable_wakeups ;
 int start_client () ;
 int start_server () ;
 int uv_default_loop () ;
 int uv_run (int ,int ) ;
 int valid_writable_wakeups ;

__attribute__((used)) static void start_poll_test(void) {
  int i, r;
  start_server();

  for (i = 0; i < NUM_CLIENTS; i++)
    start_client();

  r = uv_run(uv_default_loop(), UV_RUN_DEFAULT);
  ASSERT(r == 0);


  ASSERT(spurious_writable_wakeups == 0 ||
         (valid_writable_wakeups + spurious_writable_wakeups) /
         spurious_writable_wakeups > 20);

  ASSERT(closed_connections == NUM_CLIENTS * 2);

  ASSERT(disconnects == NUM_CLIENTS * 2);

  MAKE_VALGRIND_HAPPY();
}
