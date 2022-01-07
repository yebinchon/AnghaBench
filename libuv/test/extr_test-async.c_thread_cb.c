
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int async ;
 int async_cb_called ;
 int mutex ;
 int uv_async_send (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_sleep (int ) ;

__attribute__((used)) static void thread_cb(void *arg) {
  int n;
  int r;

  for (;;) {
    uv_mutex_lock(&mutex);
    n = async_cb_called;
    uv_mutex_unlock(&mutex);

    if (n == 3) {
      break;
    }

    r = uv_async_send(&async);
    ASSERT(r == 0);
    uv_sleep(0);
  }
}
