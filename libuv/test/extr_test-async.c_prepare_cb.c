
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;


 int ASSERT (int) ;
 int mutex ;
 int prepare ;
 int prepare_cb_called ;
 int thread ;
 int thread_cb ;
 int uv_mutex_unlock (int *) ;
 int uv_thread_create (int *,int ,int *) ;

__attribute__((used)) static void prepare_cb(uv_prepare_t* handle) {
  int r;

  ASSERT(handle == &prepare);

  if (prepare_cb_called++)
    return;

  r = uv_thread_create(&thread, thread_cb, ((void*)0));
  ASSERT(r == 0);
  uv_mutex_unlock(&mutex);
}
