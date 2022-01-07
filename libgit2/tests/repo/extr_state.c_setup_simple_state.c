
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _path ;
 int _repo ;
 int cl_git_mkfile (int ,char*) ;
 int cl_git_pass (int ) ;
 int git_buf_cstr (int *) ;
 int git_buf_joinpath (int *,int ,char const*) ;
 int git_futils_mkpath2file (int ,int) ;
 int git_repository_path (int ) ;

__attribute__((used)) static void setup_simple_state(const char *filename)
{
 cl_git_pass(git_buf_joinpath(&_path, git_repository_path(_repo), filename));
 git_futils_mkpath2file(git_buf_cstr(&_path), 0777);
 cl_git_mkfile(git_buf_cstr(&_path), "dummy");
}
