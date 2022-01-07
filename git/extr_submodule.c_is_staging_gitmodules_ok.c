
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct index_state {int cache_nr; int * cache; } ;


 int DATA_CHANGED ;
 int GITMODULES_FILE ;
 int ie_match_stat (struct index_state*,int ,struct stat*,int ) ;
 int index_name_pos (struct index_state*,int ,int ) ;
 scalar_t__ lstat (int ,struct stat*) ;
 int strlen (int ) ;

int is_staging_gitmodules_ok(struct index_state *istate)
{
 int pos = index_name_pos(istate, GITMODULES_FILE, strlen(GITMODULES_FILE));

 if ((pos >= 0) && (pos < istate->cache_nr)) {
  struct stat st;
  if (lstat(GITMODULES_FILE, &st) == 0 &&
      ie_match_stat(istate, istate->cache[pos], &st, 0) & DATA_CHANGED)
   return 0;
 }

 return 1;
}
