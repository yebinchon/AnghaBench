
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int operations; } ;
typedef TYPE_1__ git_rebase ;


 int assert (TYPE_1__*) ;
 size_t git_array_size (int ) ;

size_t git_rebase_operation_entrycount(git_rebase *rebase)
{
 assert(rebase);

 return git_array_size(rebase->operations);
}
