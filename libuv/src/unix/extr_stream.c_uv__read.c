
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {int flags; scalar_t__ type; int (* read_cb ) (TYPE_1__*,scalar_t__,TYPE_3__*) ;int io_watcher; int loop; int (* alloc_cb ) (int *,int,TYPE_3__*) ;} ;
typedef TYPE_1__ uv_stream_t ;
struct TYPE_26__ {scalar_t__ ipc; } ;
typedef TYPE_2__ uv_pipe_t ;
typedef int uv_handle_t ;
struct TYPE_27__ {scalar_t__ len; int * base; } ;
typedef TYPE_3__ uv_buf_t ;
struct msghdr {int msg_iovlen; int msg_controllen; char* msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; scalar_t__ msg_flags; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int cmsg_space ;


 int CMSG_SPACE (int ) ;
 scalar_t__ EAGAIN ;
 scalar_t__ ECONNRESET ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 int POLLIN ;
 int POLLOUT ;
 int UV_DISCONNECT ;
 int UV_ENOBUFS ;
 int UV_HANDLE_READING ;
 int UV_HANDLE_READ_PARTIAL ;
 scalar_t__ UV_NAMED_PIPE ;
 int UV__CMSG_FD_SIZE ;
 int UV__ERR (scalar_t__) ;
 int assert (int) ;
 scalar_t__ errno ;
 scalar_t__ read (scalar_t__,int *,scalar_t__) ;
 int stub1 (int *,int,TYPE_3__*) ;
 int stub2 (TYPE_1__*,int,TYPE_3__*) ;
 int stub3 (TYPE_1__*,int,TYPE_3__*) ;
 int stub4 (TYPE_1__*,int,TYPE_3__*) ;
 int stub5 (TYPE_1__*,int,TYPE_3__*) ;
 int stub6 (TYPE_1__*,int,TYPE_3__*) ;
 int stub7 (TYPE_1__*,scalar_t__,TYPE_3__*) ;
 int uv__handle_stop (TYPE_1__*) ;
 int uv__io_active (int *,int ) ;
 int uv__io_start (int ,int *,int ) ;
 int uv__io_stop (int ,int *,int ) ;
 void* uv__recvmsg (scalar_t__,struct msghdr*,int ) ;
 int uv__stream_eof (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ uv__stream_fd (TYPE_1__*) ;
 int uv__stream_osx_interrupt_select (TYPE_1__*) ;
 int uv__stream_recv_cmsg (TYPE_1__*,struct msghdr*) ;
 TYPE_3__ uv_buf_init (int *,int ) ;

__attribute__((used)) static void uv__read(uv_stream_t* stream) {
  uv_buf_t buf;
  ssize_t nread;
  struct msghdr msg;
  char cmsg_space[CMSG_SPACE(UV__CMSG_FD_SIZE)];
  int count;
  int err;
  int is_ipc;

  stream->flags &= ~UV_HANDLE_READ_PARTIAL;




  count = 32;

  is_ipc = stream->type == UV_NAMED_PIPE && ((uv_pipe_t*) stream)->ipc;




  while (stream->read_cb
      && (stream->flags & UV_HANDLE_READING)
      && (count-- > 0)) {
    assert(stream->alloc_cb != ((void*)0));

    buf = uv_buf_init(((void*)0), 0);
    stream->alloc_cb((uv_handle_t*)stream, 64 * 1024, &buf);
    if (buf.base == ((void*)0) || buf.len == 0) {

      stream->read_cb(stream, UV_ENOBUFS, &buf);
      return;
    }

    assert(buf.base != ((void*)0));
    assert(uv__stream_fd(stream) >= 0);

    if (!is_ipc) {
      do {
        nread = read(uv__stream_fd(stream), buf.base, buf.len);
      }
      while (nread < 0 && errno == EINTR);
    } else {

      msg.msg_flags = 0;
      msg.msg_iov = (struct iovec*) &buf;
      msg.msg_iovlen = 1;
      msg.msg_name = ((void*)0);
      msg.msg_namelen = 0;

      msg.msg_controllen = sizeof(cmsg_space);
      msg.msg_control = cmsg_space;

      do {
        nread = uv__recvmsg(uv__stream_fd(stream), &msg, 0);
      }
      while (nread < 0 && errno == EINTR);
    }

    if (nread < 0) {

      if (errno == EAGAIN || errno == EWOULDBLOCK) {

        if (stream->flags & UV_HANDLE_READING) {
          uv__io_start(stream->loop, &stream->io_watcher, POLLIN);
          uv__stream_osx_interrupt_select(stream);
        }
        stream->read_cb(stream, 0, &buf);
      } else {

        stream->read_cb(stream, UV__ERR(errno), &buf);
        if (stream->flags & UV_HANDLE_READING) {
          stream->flags &= ~UV_HANDLE_READING;
          uv__io_stop(stream->loop, &stream->io_watcher, POLLIN);
          if (!uv__io_active(&stream->io_watcher, POLLOUT))
            uv__handle_stop(stream);
          uv__stream_osx_interrupt_select(stream);
        }
      }
      return;
    } else if (nread == 0) {
      uv__stream_eof(stream, &buf);
      return;
    } else {

      ssize_t buflen = buf.len;

      if (is_ipc) {
        err = uv__stream_recv_cmsg(stream, &msg);
        if (err != 0) {
          stream->read_cb(stream, err, &buf);
          return;
        }
      }
      stream->read_cb(stream, nread, &buf);


      if (nread < buflen) {
        stream->flags |= UV_HANDLE_READ_PARTIAL;
        return;
      }
    }
  }
}
