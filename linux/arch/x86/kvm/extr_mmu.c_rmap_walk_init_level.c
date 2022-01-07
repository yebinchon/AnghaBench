
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot_rmap_walk_iterator {int level; int slot; int end_gfn; void* end_rmap; int gfn; void* rmap; int start_gfn; } ;


 void* __gfn_to_rmap (int ,int,int ) ;

__attribute__((used)) static void
rmap_walk_init_level(struct slot_rmap_walk_iterator *iterator, int level)
{
 iterator->level = level;
 iterator->gfn = iterator->start_gfn;
 iterator->rmap = __gfn_to_rmap(iterator->gfn, level, iterator->slot);
 iterator->end_rmap = __gfn_to_rmap(iterator->end_gfn, level,
        iterator->slot);
}
