
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;
typedef int uv_async_t ;


 int ASSERT (int) ;
 int async ;
 int async_cb_called ;
 int close_cb ;
 int mutex ;
 int prepare ;
 int uv_close (int *,int ) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static void async_cb(uv_async_t* handle) {
  int n;

  ASSERT(handle == &async);

  uv_mutex_lock(&mutex);
  n = ++async_cb_called;
  uv_mutex_unlock(&mutex);

  if (n == 3) {
    uv_close((uv_handle_t*)&async, close_cb);
    uv_close((uv_handle_t*)&prepare, close_cb);
  }
}
