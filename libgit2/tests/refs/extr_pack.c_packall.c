
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refdb ;


 int cl_git_pass (int ) ;
 int g_repo ;
 int git_refdb_compress (int *) ;
 int git_refdb_free (int *) ;
 int git_repository_refdb (int **,int ) ;

__attribute__((used)) static void packall(void)
{
 git_refdb *refdb;

 cl_git_pass(git_repository_refdb(&refdb, g_repo));
 cl_git_pass(git_refdb_compress(refdb));
 git_refdb_free(refdb);
}
