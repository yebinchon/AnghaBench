
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_rebase_operation ;
struct TYPE_4__ {int operations; } ;
typedef TYPE_1__ git_rebase ;


 int assert (TYPE_1__*) ;
 int * git_array_get (int ,size_t) ;

git_rebase_operation *git_rebase_operation_byindex(git_rebase *rebase, size_t idx)
{
 assert(rebase);

 return git_array_get(rebase->operations, idx);
}
