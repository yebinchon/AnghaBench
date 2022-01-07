
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refspec ;


 int GIT_ERROR_CHECK_ALLOC (int *) ;
 int assert (int) ;
 int git__free (int *) ;
 int * git__malloc (int) ;
 scalar_t__ git_refspec__parse (int *,char const*,int) ;

int git_refspec_parse(git_refspec **out_refspec, const char *input, int is_fetch)
{
 git_refspec *refspec;
 assert(out_refspec && input);

 *out_refspec = ((void*)0);

 refspec = git__malloc(sizeof(git_refspec));
 GIT_ERROR_CHECK_ALLOC(refspec);

 if (git_refspec__parse(refspec, input, !!is_fetch) != 0) {
  git__free(refspec);
  return -1;
 }

 *out_refspec = refspec;
 return 0;
}
