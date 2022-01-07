
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int atime; int mtime; int file; } ;
typedef TYPE_1__ uv_fs_t ;
typedef int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;
typedef int ssize_t ;
struct TYPE_7__ {int att_mtimechg; int att_atimechg; int att_mtime; int att_atime; } ;
typedef TYPE_2__ attrib_t ;
typedef int atr ;


 int ENOSYS ;
 int __fchattr (int ,TYPE_2__*,int) ;
 int errno ;
 int futimens (int ,struct timespec*) ;
 int futimes (int ,struct timeval*) ;
 int futimesat (int ,int *,struct timeval*) ;
 int memset (TYPE_2__*,int ,int) ;
 int utimensat (int ,int *,struct timespec*,int ) ;

__attribute__((used)) static ssize_t uv__fs_futime(uv_fs_t* req) {






  struct timespec ts[2];
  ts[0].tv_sec = req->atime;
  ts[0].tv_nsec = (uint64_t)(req->atime * 1000000) % 1000000 * 1000;
  ts[1].tv_sec = req->mtime;
  ts[1].tv_nsec = (uint64_t)(req->mtime * 1000000) % 1000000 * 1000;



  return futimens(req->file, ts);
}
