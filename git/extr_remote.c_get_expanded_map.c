
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct refspec_item {scalar_t__ force; int dst; int src; } ;
struct ref {struct ref* next; TYPE_1__* peer_ref; int name; } ;
struct TYPE_2__ {int force; } ;


 TYPE_1__* alloc_ref (char*) ;
 struct ref* copy_ref (struct ref const*) ;
 int free (char*) ;
 int ignore_symref_update (char*) ;
 scalar_t__ match_name_with_pattern (int ,int ,int ,char**) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static struct ref *get_expanded_map(const struct ref *remote_refs,
        const struct refspec_item *refspec)
{
 const struct ref *ref;
 struct ref *ret = ((void*)0);
 struct ref **tail = &ret;

 for (ref = remote_refs; ref; ref = ref->next) {
  char *expn_name = ((void*)0);

  if (strchr(ref->name, '^'))
   continue;
  if (match_name_with_pattern(refspec->src, ref->name,
         refspec->dst, &expn_name) &&
      !ignore_symref_update(expn_name)) {
   struct ref *cpy = copy_ref(ref);

   cpy->peer_ref = alloc_ref(expn_name);
   if (refspec->force)
    cpy->peer_ref->force = 1;
   *tail = cpy;
   tail = &cpy->next;
  }
  free(expn_name);
 }

 return ret;
}
