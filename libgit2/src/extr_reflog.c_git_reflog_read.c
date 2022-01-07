
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reflog ;
typedef int git_refdb ;


 int assert (int ) ;
 int git_refdb_reflog_read (int **,int *,char const*) ;
 int git_repository_refdb__weakptr (int **,int *) ;

int git_reflog_read(git_reflog **reflog, git_repository *repo, const char *name)
{
 git_refdb *refdb;
 int error;

 assert(reflog && repo && name);

 if ((error = git_repository_refdb__weakptr(&refdb, repo)) < 0)
  return error;

 return git_refdb_reflog_read(reflog, refdb, name);
}
