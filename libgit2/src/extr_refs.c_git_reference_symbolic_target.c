
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* symbolic; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;


 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int assert (TYPE_2__ const*) ;

const char *git_reference_symbolic_target(const git_reference *ref)
{
 assert(ref);

 if (ref->type != GIT_REFERENCE_SYMBOLIC)
  return ((void*)0);

 return ref->target.symbolic;
}
