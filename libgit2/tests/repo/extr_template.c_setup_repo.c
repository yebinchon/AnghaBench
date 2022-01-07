
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository_init_options ;


 int _repo ;
 int cl_git_pass (int ) ;
 char const* fixture_repo ;
 int git_repository_init_ext (int *,char const*,int *) ;

__attribute__((used)) static void setup_repo(const char *name, git_repository_init_options *opts)
{
 cl_git_pass(git_repository_init_ext(&_repo, name, opts));
 fixture_repo = name;
}
