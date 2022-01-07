
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_commit ;


 int retrieve_target_from_oid (int **,int *,char*) ;

__attribute__((used)) static void retrieve_known_commit(git_commit **commit, git_repository *repo)
{
 retrieve_target_from_oid(commit, repo, "e90810b8df3");
}
