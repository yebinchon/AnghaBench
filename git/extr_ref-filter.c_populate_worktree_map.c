
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {scalar_t__ head_ref; } ;
struct ref_to_worktree_entry {int ent; struct worktree* wt; } ;
struct hashmap {int dummy; } ;


 int hashmap_add (struct hashmap*,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int strhash (scalar_t__) ;
 struct ref_to_worktree_entry* xmalloc (int) ;

__attribute__((used)) static void populate_worktree_map(struct hashmap *map, struct worktree **worktrees)
{
 int i;

 for (i = 0; worktrees[i]; i++) {
  if (worktrees[i]->head_ref) {
   struct ref_to_worktree_entry *entry;
   entry = xmalloc(sizeof(*entry));
   entry->wt = worktrees[i];
   hashmap_entry_init(&entry->ent,
     strhash(worktrees[i]->head_ref));

   hashmap_add(map, &entry->ent);
  }
 }
}
