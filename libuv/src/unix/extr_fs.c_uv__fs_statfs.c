
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_bsize; scalar_t__ f_type; } ;
typedef TYPE_1__ uv_statfs_t ;
struct TYPE_6__ {TYPE_1__* ptr; int path; } ;
typedef TYPE_2__ uv_fs_t ;
struct statvfs {int dummy; } ;
struct statfs {int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_bsize; scalar_t__ f_type; } ;


 int ENOMEM ;
 int errno ;
 scalar_t__ statfs (int ,struct statfs*) ;
 scalar_t__ statvfs (int ,struct statvfs*) ;
 TYPE_1__* uv__malloc (int) ;

__attribute__((used)) static int uv__fs_statfs(uv_fs_t* req) {
  uv_statfs_t* stat_fs;





  struct statfs buf;

  if (0 != statfs(req->path, &buf))

    return -1;

  stat_fs = uv__malloc(sizeof(*stat_fs));
  if (stat_fs == ((void*)0)) {
    errno = ENOMEM;
    return -1;
  }




  stat_fs->f_type = buf.f_type;

  stat_fs->f_bsize = buf.f_bsize;
  stat_fs->f_blocks = buf.f_blocks;
  stat_fs->f_bfree = buf.f_bfree;
  stat_fs->f_bavail = buf.f_bavail;
  stat_fs->f_files = buf.f_files;
  stat_fs->f_ffree = buf.f_ffree;
  req->ptr = stat_fs;
  return 0;
}
