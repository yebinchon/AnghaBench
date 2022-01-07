
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_reflog ;


 int cl_git_pass (int ) ;
 size_t git_reflog_entrycount (int *) ;
 int git_reflog_free (int *) ;
 int git_reflog_read (int **,int *,char const*) ;

size_t reflog_entrycount(git_repository *repo, const char *name)
{
 git_reflog *log;
 size_t ret;

 cl_git_pass(git_reflog_read(&log, repo, name));
 ret = git_reflog_entrycount(log);
 git_reflog_free(log);

 return ret;
}
