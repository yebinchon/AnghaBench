
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int object_dir_mode; int objects_dir; scalar_t__ objects_dirlen; } ;
typedef TYPE_1__ loose_backend ;
struct TYPE_6__ {scalar_t__ ptr; } ;
typedef TYPE_2__ git_buf ;


 int GIT_MKDIR_PATH ;
 int GIT_MKDIR_SKIP_LAST ;
 int GIT_MKDIR_VERIFY_DIR ;
 int git_futils_mkdir_relative (scalar_t__,int ,int ,int,int *) ;

__attribute__((used)) static int object_mkdir(const git_buf *name, const loose_backend *be)
{
 return git_futils_mkdir_relative(
  name->ptr + be->objects_dirlen, be->objects_dir, be->object_dir_mode,
  GIT_MKDIR_PATH | GIT_MKDIR_SKIP_LAST | GIT_MKDIR_VERIFY_DIR, ((void*)0));
}
