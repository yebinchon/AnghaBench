
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ git_reference_t ;
struct TYPE_6__ {int oid; int symbolic; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
typedef TYPE_2__ git_reference ;


 scalar_t__ GIT_REFERENCE_SYMBOLIC ;
 int assert (int) ;
 int git_oid__cmp (int *,int *) ;
 scalar_t__ git_reference_type (TYPE_2__ const*) ;
 int strcmp (int ,int ) ;

int git_reference_cmp(
 const git_reference *ref1,
 const git_reference *ref2)
{
 git_reference_t type1, type2;
 assert(ref1 && ref2);

 type1 = git_reference_type(ref1);
 type2 = git_reference_type(ref2);


 if (type1 != type2)
  return (type1 == GIT_REFERENCE_SYMBOLIC) ? -1 : 1;

 if (type1 == GIT_REFERENCE_SYMBOLIC)
  return strcmp(ref1->target.symbolic, ref2->target.symbolic);

 return git_oid__cmp(&ref1->target.oid, &ref2->target.oid);
}
