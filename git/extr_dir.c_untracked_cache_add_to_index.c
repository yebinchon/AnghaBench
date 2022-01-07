
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int untracked_cache_invalidate_path (struct index_state*,char const*,int) ;

void untracked_cache_add_to_index(struct index_state *istate,
      const char *path)
{
 untracked_cache_invalidate_path(istate, path, 1);
}
