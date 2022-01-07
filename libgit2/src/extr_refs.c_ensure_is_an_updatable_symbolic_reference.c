
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ git_reference ;


 int GIT_ERROR_REFERENCE ;
 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int ensure_is_an_updatable_symbolic_reference(git_reference *ref)
{
 if (ref->type == GIT_REFERENCE_SYMBOLIC)
  return 0;

 git_error_set(GIT_ERROR_REFERENCE, "cannot set symbolic target on a direct reference");
 return -1;
}
