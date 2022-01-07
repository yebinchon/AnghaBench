
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slot_rmap_walk_iterator {int rmap; } ;



__attribute__((used)) static bool slot_rmap_walk_okay(struct slot_rmap_walk_iterator *iterator)
{
 return !!iterator->rmap;
}
