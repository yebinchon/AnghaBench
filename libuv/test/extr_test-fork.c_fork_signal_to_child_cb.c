
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_signal_t ;
typedef int uv_handle_t ;


 int fork_signal_cb_called ;
 int uv_close (int *,int *) ;

void fork_signal_to_child_cb(uv_signal_t* handle, int signum)
{
  fork_signal_cb_called = signum;
  uv_close((uv_handle_t*)handle, ((void*)0));
}
