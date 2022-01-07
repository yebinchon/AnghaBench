
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_refspec ;


 int git__free (int *) ;
 int git_refspec__dispose (int *) ;

void git_refspec_free(git_refspec *refspec)
{
 git_refspec__dispose(refspec);
 git__free(refspec);
}
