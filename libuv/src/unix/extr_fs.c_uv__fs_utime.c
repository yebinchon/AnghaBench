
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int atime; int mtime; scalar_t__ path; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uint64_t ;
struct utimbuf {int actime; int modtime; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int ssize_t ;
struct TYPE_7__ {int att_mtimechg; int att_atimechg; int att_mtime; int att_atime; } ;
typedef TYPE_2__ attrib_t ;
typedef int atr ;


 int AT_FDCWD ;
 int ENOSYS ;
 int __lchattr (char*,TYPE_2__*,int) ;
 int errno ;
 int memset (TYPE_2__*,int ,int) ;
 int utime (scalar_t__,struct utimbuf*) ;
 int utimensat (int ,scalar_t__,struct timespec*,int ) ;
 int utimes (scalar_t__,struct timeval*) ;

__attribute__((used)) static ssize_t uv__fs_utime(uv_fs_t* req) {







  struct timespec ts[2];
  ts[0].tv_sec = req->atime;
  ts[0].tv_nsec = (uint64_t)(req->atime * 1000000) % 1000000 * 1000;
  ts[1].tv_sec = req->mtime;
  ts[1].tv_nsec = (uint64_t)(req->mtime * 1000000) % 1000000 * 1000;
  return utimensat(AT_FDCWD, req->path, ts, 0);
}
