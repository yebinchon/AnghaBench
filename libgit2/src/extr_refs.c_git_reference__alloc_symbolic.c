
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * symbolic; } ;
struct TYPE_7__ {TYPE_1__ target; int type; } ;
typedef TYPE_2__ git_reference ;


 int GIT_REFERENCE_SYMBOLIC ;
 TYPE_2__* alloc_ref (char const*) ;
 int assert (int) ;
 int git__free (TYPE_2__*) ;
 int * git__strdup (char const*) ;

git_reference *git_reference__alloc_symbolic(
 const char *name, const char *target)
{
 git_reference *ref;

 assert(name && target);

 ref = alloc_ref(name);
 if (!ref)
  return ((void*)0);

 ref->type = GIT_REFERENCE_SYMBOLIC;

 if ((ref->target.symbolic = git__strdup(target)) == ((void*)0)) {
  git__free(ref);
  return ((void*)0);
 }

 return ref;
}
