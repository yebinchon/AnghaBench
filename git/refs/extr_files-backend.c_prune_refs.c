
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_to_prune {struct ref_to_prune* next; } ;
struct files_ref_store {int dummy; } ;


 int free (struct ref_to_prune*) ;
 int prune_ref (struct files_ref_store*,struct ref_to_prune*) ;

__attribute__((used)) static void prune_refs(struct files_ref_store *refs, struct ref_to_prune **refs_to_prune)
{
 while (*refs_to_prune) {
  struct ref_to_prune *r = *refs_to_prune;
  *refs_to_prune = r->next;
  prune_ref(refs, r);
  free(r);
 }
}
