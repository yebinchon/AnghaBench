
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_cstr (int *) ;
 scalar_t__ git_buf_joinpath (int *,int ,char const*) ;
 scalar_t__ git_path_resolve_relative (int *,int ) ;

int git_path_apply_relative(git_buf *target, const char *relpath)
{
 return git_buf_joinpath(target, git_buf_cstr(target), relpath) ||
     git_path_resolve_relative(target, 0);
}
