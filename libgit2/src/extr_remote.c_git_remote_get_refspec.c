
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refspecs; } ;
typedef TYPE_1__ git_remote ;
typedef int git_refspec ;


 int const* git_vector_get (int *,size_t) ;

const git_refspec *git_remote_get_refspec(const git_remote *remote, size_t n)
{
 return git_vector_get(&remote->refspecs, n);
}
