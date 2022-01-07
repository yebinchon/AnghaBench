
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int GIT_REFCOUNT_DEC (int *,int ) ;
 int submodule_release ;

void git_submodule_free(git_submodule *sm)
{
 if (!sm)
  return;
 GIT_REFCOUNT_DEC(sm, submodule_release);
}
