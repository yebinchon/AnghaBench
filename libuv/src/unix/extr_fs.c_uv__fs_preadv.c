
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_file ;
struct TYPE_3__ {size_t len; scalar_t__ base; } ;
typedef TYPE_1__ uv_buf_t ;
typedef int ssize_t ;
typedef int off_t ;


 scalar_t__ EINTR ;
 int UV__ERR (scalar_t__) ;
 int assert (int) ;
 scalar_t__ errno ;
 int pread (int ,scalar_t__,size_t,int) ;

__attribute__((used)) static ssize_t uv__fs_preadv(uv_file fd,
                             uv_buf_t* bufs,
                             unsigned int nbufs,
                             off_t off) {
  uv_buf_t* buf;
  uv_buf_t* end;
  ssize_t result;
  ssize_t rc;
  size_t pos;

  assert(nbufs > 0);

  result = 0;
  pos = 0;
  buf = bufs + 0;
  end = bufs + nbufs;

  for (;;) {
    do
      rc = pread(fd, buf->base + pos, buf->len - pos, off + result);
    while (rc == -1 && errno == EINTR);

    if (rc == 0)
      break;

    if (rc == -1 && result == 0)
      return UV__ERR(errno);

    if (rc == -1)
      break;

    pos += rc;
    result += rc;

    if (pos < buf->len)
      continue;

    pos = 0;
    buf += 1;

    if (buf == end)
      break;
  }

  return result;
}
