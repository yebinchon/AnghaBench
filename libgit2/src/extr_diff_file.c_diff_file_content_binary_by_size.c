
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ opts_max_size; TYPE_1__* file; } ;
typedef TYPE_2__ git_diff_file_content ;
struct TYPE_4__ {int flags; scalar_t__ size; } ;


 int DIFF_FLAGS_KNOWN_BINARY ;
 int GIT_DIFF_FLAG_BINARY ;

__attribute__((used)) static bool diff_file_content_binary_by_size(git_diff_file_content *fc)
{

 if ((fc->file->flags & DIFF_FLAGS_KNOWN_BINARY) == 0 &&
  fc->opts_max_size > 0 &&
  fc->file->size > fc->opts_max_size)
  fc->file->flags |= GIT_DIFF_FLAG_BINARY;

 return ((fc->file->flags & GIT_DIFF_FLAG_BINARY) != 0);
}
