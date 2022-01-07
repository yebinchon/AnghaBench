
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {TYPE_1__* untracked; } ;
struct TYPE_2__ {int root; } ;


 int invalidate_one_component (TYPE_1__*,int ,char const*,int ) ;
 int strlen (char const*) ;
 int verify_path (char const*,int ) ;

void untracked_cache_invalidate_path(struct index_state *istate,
         const char *path, int safe_path)
{
 if (!istate->untracked || !istate->untracked->root)
  return;
 if (!safe_path && !verify_path(path, 0))
  return;
 invalidate_one_component(istate->untracked, istate->untracked->root,
     path, strlen(path));
}
