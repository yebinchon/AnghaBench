
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum uv__work_kind { ____Placeholder_uv__work_kind } uv__work_kind ;
typedef int QUEUE ;


 int QUEUE_EMPTY (int *) ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int UV__WORK_SLOW_IO ;
 int cond ;
 scalar_t__ idle_threads ;
 int mutex ;
 int run_slow_work_message ;
 int slow_io_pending_wq ;
 int uv_cond_signal (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int wq ;

__attribute__((used)) static void post(QUEUE* q, enum uv__work_kind kind) {
  uv_mutex_lock(&mutex);
  if (kind == UV__WORK_SLOW_IO) {

    QUEUE_INSERT_TAIL(&slow_io_pending_wq, q);
    if (!QUEUE_EMPTY(&run_slow_work_message)) {


      uv_mutex_unlock(&mutex);
      return;
    }
    q = &run_slow_work_message;
  }

  QUEUE_INSERT_TAIL(&wq, q);
  if (idle_threads > 0)
    uv_cond_signal(&cond);
  uv_mutex_unlock(&mutex);
}
