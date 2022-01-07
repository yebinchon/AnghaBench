
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_reference ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT ;
 int assert (int *) ;
 int git_buf_dispose (TYPE_1__*) ;
 scalar_t__ git_buf_joinpath (TYPE_1__*,int ,int ) ;
 int git_path_isfile (int ) ;
 int git_reference_name (int *) ;
 int git_reference_owner (int *) ;
 int git_repository_path (int ) ;

int reference_is_packed(git_reference *ref)
{
 git_buf ref_path = GIT_BUF_INIT;
 int packed;

 assert(ref);

 if (git_buf_joinpath(&ref_path,
  git_repository_path(git_reference_owner(ref)),
  git_reference_name(ref)) < 0)
  return -1;

 packed = !git_path_isfile(ref_path.ptr);

 git_buf_dispose(&ref_path);

 return packed;
}
