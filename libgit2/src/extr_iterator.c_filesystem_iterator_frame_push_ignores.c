
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int path_len; int is_ignored; } ;
typedef TYPE_1__ filesystem_iterator_frame ;
struct TYPE_10__ {char* path; } ;
typedef TYPE_2__ filesystem_iterator_entry ;
struct TYPE_11__ {int ignores; int base; } ;
typedef TYPE_3__ filesystem_iterator ;


 int GIT_DIR_FLAG_TRUE ;
 int GIT_IGNORE_NOTFOUND ;
 TYPE_1__* filesystem_iterator_parent_frame (TYPE_3__*) ;
 int git_error_clear () ;
 scalar_t__ git_ignore__lookup (int *,int *,char const*,int ) ;
 int git_ignore__push_dir (int *,char const*) ;
 int iterator__honor_ignores (int *) ;

__attribute__((used)) static void filesystem_iterator_frame_push_ignores(
 filesystem_iterator *iter,
 filesystem_iterator_entry *frame_entry,
 filesystem_iterator_frame *new_frame)
{
 filesystem_iterator_frame *previous_frame;
 const char *path = frame_entry ? frame_entry->path : "";

 if (!iterator__honor_ignores(&iter->base))
  return;

 if (git_ignore__lookup(&new_frame->is_ignored,
   &iter->ignores, path, GIT_DIR_FLAG_TRUE) < 0) {
  git_error_clear();
  new_frame->is_ignored = GIT_IGNORE_NOTFOUND;
 }


 if (frame_entry) {
  const char *relative_path;

  previous_frame = filesystem_iterator_parent_frame(iter);


  relative_path = frame_entry->path + previous_frame->path_len;


  if (new_frame->is_ignored <= GIT_IGNORE_NOTFOUND)
   new_frame->is_ignored = previous_frame->is_ignored;

  git_ignore__push_dir(&iter->ignores, relative_path);
 }
}
