
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ git_off_t ;
struct TYPE_11__ {int flags; scalar_t__ max_size; } ;
typedef TYPE_3__ git_diff_options ;
struct TYPE_10__ {char* data; scalar_t__ len; } ;
struct TYPE_12__ {int opts_flags; scalar_t__ opts_max_size; scalar_t__ src; int flags; TYPE_2__ map; TYPE_1__* file; int driver; int repo; } ;
typedef TYPE_4__ git_diff_file_content ;
struct TYPE_9__ {scalar_t__ size; int flags; int path; } ;


 scalar_t__ DIFF_MAX_FILESIZE ;
 int GIT_DIFF_FLAG_BINARY ;
 int GIT_DIFF_FLAG_NOT_BINARY ;
 int GIT_DIFF_FLAG__LOADED ;
 int GIT_DIFF_FLAG__NO_DATA ;
 int GIT_DIFF_FORCE_BINARY ;
 int GIT_DIFF_FORCE_TEXT ;
 int GIT_DIFF_NORMAL ;
 scalar_t__ GIT_ITERATOR_TYPE_EMPTY ;
 scalar_t__ GIT_ITERATOR_TYPE_TREE ;
 int diff_file_content_binary_by_content (TYPE_4__*) ;
 int diff_file_content_binary_by_size (TYPE_4__*) ;
 scalar_t__ git_diff_driver_lookup (int *,int ,int *,int ) ;
 int git_diff_driver_update_options (int*,int ) ;

__attribute__((used)) static int diff_file_content_init_common(
 git_diff_file_content *fc, const git_diff_options *opts)
{
 fc->opts_flags = opts ? opts->flags : GIT_DIFF_NORMAL;

 if (opts && opts->max_size >= 0)
  fc->opts_max_size = opts->max_size ?
   opts->max_size : DIFF_MAX_FILESIZE;

 if (fc->src == GIT_ITERATOR_TYPE_EMPTY)
  fc->src = GIT_ITERATOR_TYPE_TREE;

 if (!fc->driver &&
  git_diff_driver_lookup(&fc->driver, fc->repo,
      ((void*)0), fc->file->path) < 0)
  return -1;


 git_diff_driver_update_options(&fc->opts_flags, fc->driver);


 if ((git_off_t)((size_t)fc->file->size) != fc->file->size)
  fc->file->flags |= GIT_DIFF_FLAG_BINARY;

 else if (fc->opts_flags & GIT_DIFF_FORCE_TEXT) {
  fc->file->flags &= ~GIT_DIFF_FLAG_BINARY;
  fc->file->flags |= GIT_DIFF_FLAG_NOT_BINARY;
 }

 else if (fc->opts_flags & GIT_DIFF_FORCE_BINARY) {
  fc->file->flags &= ~GIT_DIFF_FLAG_NOT_BINARY;
  fc->file->flags |= GIT_DIFF_FLAG_BINARY;
 }

 diff_file_content_binary_by_size(fc);

 if ((fc->flags & GIT_DIFF_FLAG__NO_DATA) != 0) {
  fc->flags |= GIT_DIFF_FLAG__LOADED;
  fc->map.len = 0;
  fc->map.data = "";
 }

 if ((fc->flags & GIT_DIFF_FLAG__LOADED) != 0)
  diff_file_content_binary_by_content(fc);

 return 0;
}
