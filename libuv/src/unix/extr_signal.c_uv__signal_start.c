
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int signum; int flags; void* signal_cb; } ;
typedef TYPE_1__ uv_signal_t ;
typedef void* uv_signal_cb ;
typedef int sigset_t ;


 int RB_INSERT (int ,int *,TYPE_1__*) ;
 int UV_EINVAL ;
 int UV_SIGNAL_ONE_SHOT ;
 int assert (int) ;
 int uv__handle_start (TYPE_1__*) ;
 int uv__is_closing (TYPE_1__*) ;
 int uv__signal_block_and_lock (int *) ;
 TYPE_1__* uv__signal_first_handle (int) ;
 int uv__signal_register_handler (int,int) ;
 int uv__signal_stop (TYPE_1__*) ;
 int uv__signal_tree ;
 int uv__signal_tree_s ;
 int uv__signal_unlock_and_unblock (int *) ;

__attribute__((used)) static int uv__signal_start(uv_signal_t* handle,
                            uv_signal_cb signal_cb,
                            int signum,
                            int oneshot) {
  sigset_t saved_sigmask;
  int err;
  uv_signal_t* first_handle;

  assert(!uv__is_closing(handle));





  if (signum == 0)
    return UV_EINVAL;






  if (signum == handle->signum) {
    handle->signal_cb = signal_cb;
    return 0;
  }


  if (handle->signum != 0) {
    uv__signal_stop(handle);
  }

  uv__signal_block_and_lock(&saved_sigmask);





  first_handle = uv__signal_first_handle(signum);
  if (first_handle == ((void*)0) ||
      (!oneshot && (first_handle->flags & UV_SIGNAL_ONE_SHOT))) {
    err = uv__signal_register_handler(signum, oneshot);
    if (err) {

      uv__signal_unlock_and_unblock(&saved_sigmask);
      return err;
    }
  }

  handle->signum = signum;
  if (oneshot)
    handle->flags |= UV_SIGNAL_ONE_SHOT;

  RB_INSERT(uv__signal_tree_s, &uv__signal_tree, handle);

  uv__signal_unlock_and_unblock(&saved_sigmask);

  handle->signal_cb = signal_cb;
  uv__handle_start(handle);

  return 0;
}
