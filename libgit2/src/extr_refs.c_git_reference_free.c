
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* symbolic; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ db; TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;


 int GIT_REFCOUNT_DEC (scalar_t__,int ) ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int git__free (TYPE_2__*) ;
 int git_refdb__free ;

void git_reference_free(git_reference *reference)
{
 if (reference == ((void*)0))
  return;

 if (reference->type == GIT_REFERENCE_SYMBOLIC)
  git__free(reference->target.symbolic);

 if (reference->db)
  GIT_REFCOUNT_DEC(reference->db, git_refdb__free);

 git__free(reference);
}
