
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int write_add_refspec (int *,char const*,char const*,int) ;

int git_remote_add_push(git_repository *repo, const char *remote, const char *refspec)
{
 return write_add_refspec(repo, remote, refspec, 0);
}
