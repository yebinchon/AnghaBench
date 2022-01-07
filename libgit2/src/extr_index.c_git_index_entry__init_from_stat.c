
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct stat {int st_mode; scalar_t__ st_size; int st_gid; int st_uid; int st_ino; int st_rdev; int st_ctime_nsec; int st_mtime_nsec; scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
typedef void* int32_t ;
struct TYPE_6__ {int nanoseconds; void* seconds; } ;
struct TYPE_5__ {int nanoseconds; void* seconds; } ;
struct TYPE_7__ {scalar_t__ file_size; int gid; int uid; int mode; int ino; int dev; TYPE_2__ ctime; TYPE_1__ mtime; } ;
typedef TYPE_3__ git_index_entry ;


 scalar_t__ S_ISREG (int) ;
 int git_index__create_mode (int) ;

void git_index_entry__init_from_stat(
 git_index_entry *entry, struct stat *st, bool trust_mode)
{
 entry->ctime.seconds = (int32_t)st->st_ctime;
 entry->mtime.seconds = (int32_t)st->st_mtime;




 entry->dev = st->st_rdev;
 entry->ino = st->st_ino;
 entry->mode = (!trust_mode && S_ISREG(st->st_mode)) ?
  git_index__create_mode(0666) : git_index__create_mode(st->st_mode);
 entry->uid = st->st_uid;
 entry->gid = st->st_gid;
 entry->file_size = (uint32_t)st->st_size;
}
