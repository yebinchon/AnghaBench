
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * index; } ;
typedef TYPE_1__ git_rebase ;
typedef int git_index ;


 int GIT_REFCOUNT_INC (int *) ;
 int assert (int ) ;

int git_rebase_inmemory_index(
 git_index **out,
 git_rebase *rebase)
{
 assert(out && rebase && rebase->index);

 GIT_REFCOUNT_INC(rebase->index);
 *out = rebase->index;

 return 0;
}
