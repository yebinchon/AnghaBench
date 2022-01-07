
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int cl_git_pass (int ) ;
 int git_repository_create_head (int ,char const*) ;
 int git_repository_path (int *) ;

__attribute__((used)) static void set_head(git_repository *repo, const char *name)
{
 cl_git_pass(git_repository_create_head(git_repository_path(repo), name));
}
