
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stream_t ;
typedef int uv_pipe_t ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int do_writes_and_reads (int *) ;
 int notify_parent_process () ;
 int uv_default_loop () ;
 int uv_pipe_init (int ,int *,int) ;
 int uv_pipe_open (int *,int ) ;
 int uv_sleep (int) ;

int ipc_helper_heavy_traffic_deadlock_bug(void) {
  uv_pipe_t pipe;
  int r;

  r = uv_pipe_init(uv_default_loop(), &pipe, 1);
  ASSERT(r == 0);
  r = uv_pipe_open(&pipe, 0);
  ASSERT(r == 0);

  notify_parent_process();
  do_writes_and_reads((uv_stream_t*) &pipe);
  uv_sleep(100);

  MAKE_VALGRIND_HAPPY();
  return 0;
}
