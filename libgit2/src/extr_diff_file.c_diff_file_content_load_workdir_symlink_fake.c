
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int data; int len; } ;
struct TYPE_12__ {int flags; TYPE_1__ map; } ;
typedef TYPE_2__ git_diff_file_content ;
struct TYPE_13__ {int ptr; } ;
typedef TYPE_3__ git_buf ;


 TYPE_3__ GIT_BUF_INIT ;
 int GIT_DIFF_FLAG__FREE_DATA ;
 int git_buf_detach (TYPE_3__*) ;
 int git_buf_dispose (TYPE_3__*) ;
 int git_buf_len (TYPE_3__*) ;
 int git_futils_readbuffer (TYPE_3__*,int ) ;

__attribute__((used)) static int diff_file_content_load_workdir_symlink_fake(
 git_diff_file_content *fc, git_buf *path)
{
 git_buf target = GIT_BUF_INIT;
 int error;

 if ((error = git_futils_readbuffer(&target, path->ptr)) < 0)
  return error;

 fc->map.len = git_buf_len(&target);
 fc->map.data = git_buf_detach(&target);
 fc->flags |= GIT_DIFF_FLAG__FREE_DATA;

 git_buf_dispose(&target);
 return error;
}
