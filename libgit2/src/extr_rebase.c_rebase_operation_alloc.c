
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ git_rebase_operation_t ;
struct TYPE_6__ {char const* exec; int id; scalar_t__ type; } ;
typedef TYPE_1__ git_rebase_operation ;
struct TYPE_7__ {int operations; } ;
typedef TYPE_2__ git_rebase ;
typedef int git_oid ;


 scalar_t__ GIT_REBASE_OPERATION_EXEC ;
 int assert (int) ;
 TYPE_1__* git_array_alloc (int ) ;
 int git_oid_cpy (int *,int *) ;

__attribute__((used)) static git_rebase_operation *rebase_operation_alloc(
 git_rebase *rebase,
 git_rebase_operation_t type,
 git_oid *id,
 const char *exec)
{
 git_rebase_operation *operation;

 assert((type == GIT_REBASE_OPERATION_EXEC) == !id);
 assert((type == GIT_REBASE_OPERATION_EXEC) == !!exec);

 if ((operation = git_array_alloc(rebase->operations)) == ((void*)0))
  return ((void*)0);

 operation->type = type;
 git_oid_cpy((git_oid *)&operation->id, id);
 operation->exec = exec;

 return operation;
}
