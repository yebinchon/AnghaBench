
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {struct cache_entry** cache; } ;
struct checkout {int dummy; } ;
struct cache_entry {int ce_flags; } ;


 int CE_UPDATE ;
 int CE_WT_REMOVE ;
 int GITMODULES_FILE ;
 int checkout_entry (struct cache_entry*,struct checkout*,int *,int *) ;
 int index_name_pos (struct index_state*,int ,int ) ;
 int repo_read_gitmodules (int ) ;
 int strlen (int ) ;
 int submodule_free (int ) ;
 int the_repository ;

__attribute__((used)) static void load_gitmodules_file(struct index_state *index,
     struct checkout *state)
{
 int pos = index_name_pos(index, GITMODULES_FILE, strlen(GITMODULES_FILE));

 if (pos >= 0) {
  struct cache_entry *ce = index->cache[pos];
  if (!state && ce->ce_flags & CE_WT_REMOVE) {
   repo_read_gitmodules(the_repository);
  } else if (state && (ce->ce_flags & CE_UPDATE)) {
   submodule_free(the_repository);
   checkout_entry(ce, state, ((void*)0), ((void*)0));
   repo_read_gitmodules(the_repository);
  }
 }
}
