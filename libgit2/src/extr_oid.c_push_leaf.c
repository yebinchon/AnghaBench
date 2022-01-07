
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t* children; char const* tail; } ;
typedef TYPE_1__ trie_node ;
typedef size_t node_index ;
struct TYPE_7__ {scalar_t__ node_count; scalar_t__ size; int full; TYPE_1__* nodes; } ;
typedef TYPE_2__ git_oid_shorten ;


 scalar_t__ SHRT_MAX ;
 scalar_t__ resize_trie (TYPE_2__*,int) ;

__attribute__((used)) static trie_node *push_leaf(git_oid_shorten *os, node_index idx, int push_at, const char *oid)
{
 trie_node *node, *leaf;
 node_index idx_leaf;

 if (os->node_count >= os->size) {
  if (resize_trie(os, os->size * 2) < 0)
   return ((void*)0);
 }

 idx_leaf = (node_index)os->node_count++;

 if (os->node_count == SHRT_MAX) {
  os->full = 1;
        return ((void*)0);
    }

 node = &os->nodes[idx];
 node->children[push_at] = -idx_leaf;

 leaf = &os->nodes[idx_leaf];
 leaf->tail = oid;

 return node;
}
