
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ signum; int flags; scalar_t__ dispatched_signals; scalar_t__ caught_signals; int (* signal_cb ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ uv_signal_t ;
struct TYPE_9__ {int * signal_pipefd; } ;
typedef TYPE_2__ uv_loop_t ;
typedef int uv_handle_t ;
struct TYPE_10__ {scalar_t__ signum; TYPE_1__* handle; } ;
typedef TYPE_3__ uv__signal_msg_t ;
typedef int uv__io_t ;
typedef int buf ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int UV_HANDLE_CLOSING ;
 int UV_SIGNAL_ONE_SHOT ;
 int abort () ;
 int assert (int) ;
 scalar_t__ errno ;
 int memmove (char*,char*,size_t) ;
 int read (int ,char*,int) ;
 int stub1 (TYPE_1__*,scalar_t__) ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__make_close_pending (int *) ;
 int uv__signal_stop (TYPE_1__*) ;

__attribute__((used)) static void uv__signal_event(uv_loop_t* loop,
                             uv__io_t* w,
                             unsigned int events) {
  uv__signal_msg_t* msg;
  uv_signal_t* handle;
  char buf[sizeof(uv__signal_msg_t) * 32];
  size_t bytes, end, i;
  int r;

  bytes = 0;
  end = 0;

  do {
    r = read(loop->signal_pipefd[0], buf + bytes, sizeof(buf) - bytes);

    if (r == -1 && errno == EINTR)
      continue;

    if (r == -1 && (errno == EAGAIN || errno == EWOULDBLOCK)) {




      if (bytes > 0)
        continue;


      return;
    }


    if (r == -1)
      abort();

    bytes += r;


    end = (bytes / sizeof(uv__signal_msg_t)) * sizeof(uv__signal_msg_t);

    for (i = 0; i < end; i += sizeof(uv__signal_msg_t)) {
      msg = (uv__signal_msg_t*) (buf + i);
      handle = msg->handle;

      if (msg->signum == handle->signum) {
        assert(!(handle->flags & UV_HANDLE_CLOSING));
        handle->signal_cb(handle, handle->signum);
      }

      handle->dispatched_signals++;

      if (handle->flags & UV_SIGNAL_ONE_SHOT)
        uv__signal_stop(handle);





      if (handle->caught_signals == handle->dispatched_signals) {
        if (handle->signum == 0)
          uv__handle_stop(handle);
        if (handle->flags & UV_HANDLE_CLOSING)
          uv__make_close_pending((uv_handle_t*) handle);
      }
    }

    bytes -= end;




    if (bytes) {
      memmove(buf, buf + end, bytes);
      continue;
    }
  } while (end == sizeof buf);
}
