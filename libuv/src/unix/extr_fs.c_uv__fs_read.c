
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int nbufs; scalar_t__ off; int file; TYPE_3__* bufs; TYPE_3__* bufsml; } ;
typedef TYPE_1__ uv_fs_t ;
struct stat {int st_mode; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int len; int base; } ;


 scalar_t__ EISDIR ;
 scalar_t__ ENOSYS ;
 scalar_t__ EOPNOTSUPP ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ errno ;
 int fstat (int ,struct stat*) ;
 int pread (int ,int ,int ,scalar_t__) ;
 int preadv (int ,struct iovec*,int,scalar_t__) ;
 int read (int ,int ,int ) ;
 int readv (int ,struct iovec*,int) ;
 int uv__free (TYPE_3__*) ;
 int uv__fs_preadv (int ,TYPE_3__*,int,scalar_t__) ;
 unsigned int uv__getiovmax () ;
 int uv__preadv (int ,struct iovec*,int,scalar_t__) ;

__attribute__((used)) static ssize_t uv__fs_read(uv_fs_t* req) {

  static int no_preadv;

  unsigned int iovmax;
  ssize_t result;

  iovmax = uv__getiovmax();
  if (req->nbufs > iovmax)
    req->nbufs = iovmax;

  if (req->off < 0) {
    if (req->nbufs == 1)
      result = read(req->file, req->bufs[0].base, req->bufs[0].len);
    else
      result = readv(req->file, (struct iovec*) req->bufs, req->nbufs);
  } else {
    if (req->nbufs == 1) {
      result = pread(req->file, req->bufs[0].base, req->bufs[0].len, req->off);
      goto done;
    }





    if (no_preadv) retry:

    {
      result = uv__fs_preadv(req->file, req->bufs, req->nbufs, req->off);
    }

    else {
      result = uv__preadv(req->file,
                          (struct iovec*)req->bufs,
                          req->nbufs,
                          req->off);
      if (result == -1 && errno == ENOSYS) {
        no_preadv = 1;
        goto retry;
      }
    }


  }

done:

  if (req->bufs != req->bufsml)
    uv__free(req->bufs);

  req->bufs = ((void*)0);
  req->nbufs = 0;
  return result;
}
