
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int ARRAY_SIZE (int ) ;
 int assert (int *) ;
 int git_repository__cleanup_files (int *,int ,int ) ;
 int state_files ;

int git_repository_state_cleanup(git_repository *repo)
{
 assert(repo);

 return git_repository__cleanup_files(repo, state_files, ARRAY_SIZE(state_files));
}
