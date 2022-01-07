
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; TYPE_1__* loop; int * cb; int mode; int path; } ;
typedef TYPE_2__ uv_fs_t ;
typedef int ssize_t ;
struct TYPE_4__ {int cloexec_lock; } ;


 int O_CLOEXEC ;
 int abort () ;
 int open (int ,int,int ) ;
 scalar_t__ uv__cloexec (int,int) ;
 int uv__close (int) ;
 int uv_rwlock_rdlock (int *) ;
 int uv_rwlock_rdunlock (int *) ;

__attribute__((used)) static ssize_t uv__fs_open(uv_fs_t* req) {



  int r;

  if (req->cb != ((void*)0))
    uv_rwlock_rdlock(&req->loop->cloexec_lock);

  r = open(req->path, req->flags, req->mode);




  if (r >= 0 && uv__cloexec(r, 1) != 0) {
    r = uv__close(r);
    if (r != 0)
      abort();
    r = -1;
  }

  if (req->cb != ((void*)0))
    uv_rwlock_rdunlock(&req->loop->cloexec_lock);

  return r;

}
