
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ off; int nbufs; TYPE_1__* bufs; int file; } ;
typedef TYPE_2__ uv_fs_t ;
struct iovec {int dummy; } ;
typedef int ssize_t ;
typedef int pthread_mutex_t ;
struct TYPE_4__ {int len; int base; } ;


 scalar_t__ ENOSYS ;
 int PTHREAD_MUTEX_INITIALIZER ;
 int abort () ;
 scalar_t__ errno ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int pwrite (int ,int ,int ,scalar_t__) ;
 int pwritev (int ,struct iovec*,int,scalar_t__) ;
 int uv__pwritev (int ,struct iovec*,int,scalar_t__) ;
 int write (int ,int ,int ) ;
 int writev (int ,struct iovec*,int) ;

__attribute__((used)) static ssize_t uv__fs_write(uv_fs_t* req) {

  static int no_pwritev;

  ssize_t r;
  if (req->off < 0) {
    if (req->nbufs == 1)
      r = write(req->file, req->bufs[0].base, req->bufs[0].len);
    else
      r = writev(req->file, (struct iovec*) req->bufs, req->nbufs);
  } else {
    if (req->nbufs == 1) {
      r = pwrite(req->file, req->bufs[0].base, req->bufs[0].len, req->off);
      goto done;
    }




    if (no_pwritev) retry:

    {
      r = pwrite(req->file, req->bufs[0].base, req->bufs[0].len, req->off);
    }

    else {
      r = uv__pwritev(req->file,
                      (struct iovec*) req->bufs,
                      req->nbufs,
                      req->off);
      if (r == -1 && errno == ENOSYS) {
        no_pwritev = 1;
        goto retry;
      }
    }


  }

done:





  return r;
}
