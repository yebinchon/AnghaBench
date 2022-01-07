
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff ;


 int GIT_REFCOUNT_INC (int *) ;

void git_diff_addref(git_diff *diff)
{
 GIT_REFCOUNT_INC(diff);
}
