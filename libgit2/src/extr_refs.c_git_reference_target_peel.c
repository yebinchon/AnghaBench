
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int const peel; } ;
typedef TYPE_1__ git_reference ;
typedef int git_oid ;


 scalar_t__ GIT_REFERENCE_DIRECT ;
 int assert (TYPE_1__ const*) ;
 scalar_t__ git_oid_is_zero (int const*) ;

const git_oid *git_reference_target_peel(const git_reference *ref)
{
 assert(ref);

 if (ref->type != GIT_REFERENCE_DIRECT || git_oid_is_zero(&ref->peel))
  return ((void*)0);

 return &ref->peel;
}
