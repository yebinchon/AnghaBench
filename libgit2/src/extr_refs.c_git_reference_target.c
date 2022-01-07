
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int const oid; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;
typedef int git_oid ;


 scalar_t__ GIT_REFERENCE_DIRECT ;
 int assert (TYPE_2__ const*) ;

const git_oid *git_reference_target(const git_reference *ref)
{
 assert(ref);

 if (ref->type != GIT_REFERENCE_DIRECT)
  return ((void*)0);

 return &ref->target.oid;
}
