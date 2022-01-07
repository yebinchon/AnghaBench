
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache {char* exclude_per_dir; int dir_flags; int ident; } ;
struct index_state {int cache_changed; struct untracked_cache* untracked; } ;


 int DIR_HIDE_EMPTY_DIRECTORIES ;
 int DIR_SHOW_OTHER_DIRECTORIES ;
 int UNTRACKED_CHANGED ;
 int set_untracked_ident (struct untracked_cache*) ;
 int strbuf_init (int *,int) ;
 struct untracked_cache* xcalloc (int,int) ;

__attribute__((used)) static void new_untracked_cache(struct index_state *istate)
{
 struct untracked_cache *uc = xcalloc(1, sizeof(*uc));
 strbuf_init(&uc->ident, 100);
 uc->exclude_per_dir = ".gitignore";

 uc->dir_flags = DIR_SHOW_OTHER_DIRECTORIES | DIR_HIDE_EMPTY_DIRECTORIES;
 set_untracked_ident(uc);
 istate->untracked = uc;
 istate->cache_changed |= UNTRACKED_CHANGED;
}
