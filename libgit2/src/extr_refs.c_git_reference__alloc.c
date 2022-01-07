
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {int peel; TYPE_1__ target; int type; } ;
typedef TYPE_2__ git_reference ;
typedef int git_oid ;


 int GIT_REFERENCE_DIRECT ;
 TYPE_2__* alloc_ref (char const*) ;
 int assert (int) ;
 int git_oid_cpy (int *,int const*) ;

git_reference *git_reference__alloc(
 const char *name,
 const git_oid *oid,
 const git_oid *peel)
{
 git_reference *ref;

 assert(name && oid);

 ref = alloc_ref(name);
 if (!ref)
  return ((void*)0);

 ref->type = GIT_REFERENCE_DIRECT;
 git_oid_cpy(&ref->target.oid, oid);

 if (peel != ((void*)0))
  git_oid_cpy(&ref->peel, peel);

 return ref;
}
