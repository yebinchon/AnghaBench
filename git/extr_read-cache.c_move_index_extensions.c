
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int * cache_tree; int * untracked; } ;



void move_index_extensions(struct index_state *dst, struct index_state *src)
{
 dst->untracked = src->untracked;
 src->untracked = ((void*)0);
 dst->cache_tree = src->cache_tree;
 src->cache_tree = ((void*)0);
}
