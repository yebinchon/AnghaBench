
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int oid; int symbolic; } ;
struct TYPE_9__ {scalar_t__ type; int db; int peel; TYPE_1__ target; int name; } ;
typedef TYPE_2__ git_reference ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_REFCOUNT_INC (int ) ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 TYPE_2__* git_reference__alloc (int ,int *,int *) ;
 TYPE_2__* git_reference__alloc_symbolic (int ,int ) ;

int git_reference_dup(git_reference **dest, git_reference *source)
{
 if (source->type == GIT_REFERENCE_SYMBOLIC)
  *dest = git_reference__alloc_symbolic(source->name, source->target.symbolic);
 else
  *dest = git_reference__alloc(source->name, &source->target.oid, &source->peel);

 GIT_ERROR_CHECK_ALLOC(*dest);

 (*dest)->db = source->db;
 GIT_REFCOUNT_INC((*dest)->db);

 return 0;
}
