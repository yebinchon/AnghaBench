
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int buf ;


 size_t ARRAY_SIZE (scalar_t__) ;
 int ASSERT (int) ;
 int done_cb ;
 scalar_t__ pause_reqs ;
 scalar_t__ pause_sems ;
 int putenv (char*) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int * uv_default_loop () ;
 scalar_t__ uv_queue_work (int *,scalar_t__,int ,int ) ;
 scalar_t__ uv_sem_init (scalar_t__,int ) ;
 int work_cb ;

__attribute__((used)) static void saturate_threadpool(void) {
  uv_loop_t* loop;
  char buf[64];
  size_t i;

  snprintf(buf,
           sizeof(buf),
           "UV_THREADPOOL_SIZE=%lu",
           (unsigned long)ARRAY_SIZE(pause_reqs));
  putenv(buf);

  loop = uv_default_loop();
  for (i = 0; i < ARRAY_SIZE(pause_reqs); i += 1) {
    ASSERT(0 == uv_sem_init(pause_sems + i, 0));
    ASSERT(0 == uv_queue_work(loop, pause_reqs + i, work_cb, done_cb));
  }
}
