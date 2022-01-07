
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t current; scalar_t__ started; } ;
typedef TYPE_1__ git_rebase ;


 size_t GIT_REBASE_NO_OPERATION ;
 int assert (TYPE_1__*) ;

size_t git_rebase_operation_current(git_rebase *rebase)
{
 assert(rebase);

 return rebase->started ? rebase->current : GIT_REBASE_NO_OPERATION;
}
