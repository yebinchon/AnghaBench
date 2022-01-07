
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int signum; int caught_signals; TYPE_1__* loop; } ;
typedef TYPE_2__ uv_signal_t ;
struct TYPE_11__ {int signum; TYPE_2__* handle; } ;
typedef TYPE_3__ uv__signal_msg_t ;
struct TYPE_9__ {int * signal_pipefd; } ;


 int EAGAIN ;
 int EINTR ;
 int EWOULDBLOCK ;
 TYPE_2__* RB_NEXT (int ,int *,TYPE_2__*) ;
 int assert (int) ;
 int errno ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__* uv__signal_first_handle (int) ;
 scalar_t__ uv__signal_lock () ;
 int uv__signal_tree ;
 int uv__signal_tree_s ;
 int uv__signal_unlock () ;
 int write (int ,TYPE_3__*,int) ;

__attribute__((used)) static void uv__signal_handler(int signum) {
  uv__signal_msg_t msg;
  uv_signal_t* handle;
  int saved_errno;

  saved_errno = errno;
  memset(&msg, 0, sizeof msg);

  if (uv__signal_lock()) {
    errno = saved_errno;
    return;
  }

  for (handle = uv__signal_first_handle(signum);
       handle != ((void*)0) && handle->signum == signum;
       handle = RB_NEXT(uv__signal_tree_s, &uv__signal_tree, handle)) {
    int r;

    msg.signum = signum;
    msg.handle = handle;





    do {
      r = write(handle->loop->signal_pipefd[1], &msg, sizeof msg);
    } while (r == -1 && errno == EINTR);

    assert(r == sizeof msg ||
           (r == -1 && (errno == EAGAIN || errno == EWOULDBLOCK)));

    if (r != -1)
      handle->caught_signals++;
  }

  uv__signal_unlock();
  errno = saved_errno;
}
