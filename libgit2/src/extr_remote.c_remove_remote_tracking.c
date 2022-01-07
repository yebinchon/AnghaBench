
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_remote ;
typedef int git_refspec ;


 int git_remote_free (int *) ;
 int * git_remote_get_refspec (int *,size_t) ;
 int git_remote_lookup (int **,int *,char const*) ;
 size_t git_remote_refspec_count (int *) ;
 int remove_refs (int *,int const*) ;

__attribute__((used)) static int remove_remote_tracking(git_repository *repo, const char *remote_name)
{
 git_remote *remote;
 int error;
 size_t i, count;


 if ((error = git_remote_lookup(&remote, repo, remote_name)) < 0)
  return error;

 count = git_remote_refspec_count(remote);
 for (i = 0; i < count; i++) {
  const git_refspec *refspec = git_remote_get_refspec(remote, i);


  if (refspec == ((void*)0))
   continue;

  if ((error = remove_refs(repo, refspec)) < 0)
   break;
 }

 git_remote_free(remote);
 return error;
}
