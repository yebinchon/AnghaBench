
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int free_fn; } ;
typedef TYPE_1__ git_diff ;


 int GIT_REFCOUNT_DEC (TYPE_1__*,int ) ;

void git_diff_free(git_diff *diff)
{
 if (!diff)
  return;

 GIT_REFCOUNT_DEC(diff, diff->free_fn);
}
