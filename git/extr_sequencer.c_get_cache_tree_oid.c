
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct index_state {TYPE_1__* cache_tree; } ;
struct TYPE_3__ {struct object_id oid; } ;


 int _ (char*) ;
 TYPE_1__* cache_tree () ;
 int cache_tree_fully_valid (TYPE_1__*) ;
 scalar_t__ cache_tree_update (struct index_state*,int ) ;
 int error (int ) ;

__attribute__((used)) static struct object_id *get_cache_tree_oid(struct index_state *istate)
{
 if (!istate->cache_tree)
  istate->cache_tree = cache_tree();

 if (!cache_tree_fully_valid(istate->cache_tree))
  if (cache_tree_update(istate, 0)) {
   error(_("unable to update cache tree"));
   return ((void*)0);
  }

 return &istate->cache_tree->oid;
}
