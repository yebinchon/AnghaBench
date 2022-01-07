
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_work_t ;
typedef int uv_loop_t ;


 int ASSERT (int) ;
 int UV_RUN_DEFAULT ;
 int after_work_cb ;
 int after_work_cb_count ;
 int getpid () ;
 int printf (char*,int) ;
 int uv_queue_work (int * const,int *,int ,int ) ;
 int uv_run (int * const,int ) ;
 int work_cb ;
 int work_cb_count ;

__attribute__((used)) static void assert_run_work(uv_loop_t* const loop) {
  uv_work_t work_req;
  int r;

  ASSERT(work_cb_count == 0);
  ASSERT(after_work_cb_count == 0);
  printf("Queue in %d\n", getpid());
  r = uv_queue_work(loop, &work_req, work_cb, after_work_cb);
  ASSERT(r == 0);
  printf("Running in %d\n", getpid());
  uv_run(loop, UV_RUN_DEFAULT);

  ASSERT(work_cb_count == 1);
  ASSERT(after_work_cb_count == 1);


  work_cb_count = 0;
  after_work_cb_count = 0;
}
