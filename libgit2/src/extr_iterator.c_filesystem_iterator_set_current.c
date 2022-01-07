
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef void* int32_t ;
struct TYPE_12__ {scalar_t__ st_size; int st_gid; int st_uid; int st_mode; int st_ino; int st_dev; scalar_t__ st_mtime_nsec; scalar_t__ st_ctime_nsec; scalar_t__ st_mtime; scalar_t__ st_ctime; } ;
struct TYPE_15__ {int path; int id; TYPE_3__ st; } ;
typedef TYPE_6__ filesystem_iterator_entry ;
struct TYPE_11__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_10__ {scalar_t__ nanoseconds; void* seconds; } ;
struct TYPE_14__ {int path; int id; scalar_t__ file_size; int gid; int uid; int mode; int ino; int dev; TYPE_2__ mtime; TYPE_1__ ctime; } ;
struct TYPE_13__ {int flags; } ;
struct TYPE_16__ {int current_is_ignored; TYPE_5__ entry; TYPE_4__ base; } ;
typedef TYPE_7__ filesystem_iterator ;


 int GIT_IGNORE_UNCHECKED ;
 int GIT_ITERATOR_INCLUDE_HASH ;
 int git_futils_canonical_mode (int ) ;
 int git_oid_cpy (int *,int *) ;

__attribute__((used)) static void filesystem_iterator_set_current(
 filesystem_iterator *iter,
 filesystem_iterator_entry *entry)
{







 iter->entry.ctime.seconds = (int32_t)entry->st.st_ctime;
 iter->entry.mtime.seconds = (int32_t)entry->st.st_mtime;





 iter->entry.ctime.nanoseconds = 0;
 iter->entry.mtime.nanoseconds = 0;


 iter->entry.dev = entry->st.st_dev;
 iter->entry.ino = entry->st.st_ino;
 iter->entry.mode = git_futils_canonical_mode(entry->st.st_mode);
 iter->entry.uid = entry->st.st_uid;
 iter->entry.gid = entry->st.st_gid;
 iter->entry.file_size = (uint32_t)entry->st.st_size;

 if (iter->base.flags & GIT_ITERATOR_INCLUDE_HASH)
  git_oid_cpy(&iter->entry.id, &entry->id);

 iter->entry.path = entry->path;

 iter->current_is_ignored = GIT_IGNORE_UNCHECKED;
}
