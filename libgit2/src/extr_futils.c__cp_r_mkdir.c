
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_6__ {int flags; int mkdir_flags; int dirmode; int to_root; scalar_t__ from_prefix; } ;
typedef TYPE_2__ cp_r_info ;


 int GIT_CPDIR_CHMOD_DIRS ;
 int GIT_CPDIR__MKDIR_DONE_FOR_TO_ROOT ;
 int GIT_MKDIR_CHMOD ;
 int git_futils_mkdir (int ,int ,int ) ;
 int git_futils_mkdir_relative (scalar_t__,int ,int ,int ,int *) ;

__attribute__((used)) static int _cp_r_mkdir(cp_r_info *info, git_buf *from)
{
 int error = 0;


 if ((info->flags & GIT_CPDIR__MKDIR_DONE_FOR_TO_ROOT) == 0) {
  error = git_futils_mkdir(
   info->to_root, info->dirmode,
   (info->flags & GIT_CPDIR_CHMOD_DIRS) ? GIT_MKDIR_CHMOD : 0);

  info->flags |= GIT_CPDIR__MKDIR_DONE_FOR_TO_ROOT;
 }


 if (!error)
  error = git_futils_mkdir_relative(
   from->ptr + info->from_prefix, info->to_root,
   info->dirmode, info->mkdir_flags, ((void*)0));

 return error;
}
