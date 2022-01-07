
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refname; } ;
struct used_atom {TYPE_1__ u; } ;
struct ref_array_item {int kind; int refname; } ;


 int FILTER_REFS_DETACHED_HEAD ;
 char const* get_head_description () ;
 char const* show_ref (int *,int ) ;

__attribute__((used)) static const char *get_refname(struct used_atom *atom, struct ref_array_item *ref)
{
 if (ref->kind & FILTER_REFS_DETACHED_HEAD)
  return get_head_description();
 return show_ref(&atom->u.refname, ref->refname);
}
