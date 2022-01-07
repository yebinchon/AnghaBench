
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_dir_flag ;
struct TYPE_7__ {int is_ignored; } ;
typedef TYPE_1__ filesystem_iterator_frame ;
struct TYPE_9__ {int path; } ;
struct TYPE_8__ {int current_is_ignored; TYPE_6__ entry; int ignores; } ;
typedef TYPE_2__ filesystem_iterator ;


 int GIT_IGNORE_NOTFOUND ;
 int entry_dir_flag (TYPE_6__*) ;
 TYPE_1__* filesystem_iterator_current_frame (TYPE_2__*) ;
 int git_error_clear () ;
 scalar_t__ git_ignore__lookup (int *,int *,int ,int ) ;

__attribute__((used)) static void filesystem_iterator_update_ignored(filesystem_iterator *iter)
{
 filesystem_iterator_frame *frame;
 git_dir_flag dir_flag = entry_dir_flag(&iter->entry);

 if (git_ignore__lookup(&iter->current_is_ignored,
   &iter->ignores, iter->entry.path, dir_flag) < 0) {
  git_error_clear();
  iter->current_is_ignored = GIT_IGNORE_NOTFOUND;
 }


 if (iter->current_is_ignored <= GIT_IGNORE_NOTFOUND) {
  frame = filesystem_iterator_current_frame(iter);
  iter->current_is_ignored = frame->is_ignored;
 }
}
