
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_patch ;
struct TYPE_2__ {int patches; } ;
typedef TYPE_1__ git_diff_parsed ;
typedef int git_diff ;


 int GIT_REFCOUNT_INC (int *) ;
 int * git_vector_get (int *,size_t) ;

int git_patch_parsed_from_diff(git_patch **out, git_diff *d, size_t idx)
{
 git_diff_parsed *diff = (git_diff_parsed *)d;
 git_patch *p;

 if ((p = git_vector_get(&diff->patches, idx)) == ((void*)0))
  return -1;

 GIT_REFCOUNT_INC(p);
 *out = p;

 return 0;
}
