
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ch; scalar_t__ deg; struct TYPE_5__* parent; int p_ch; scalar_t__ patterns_cnt; scalar_t__ used; scalar_t__ next; } ;
typedef TYPE_1__ trie_node_t ;
typedef int byte ;


 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static trie_node_t *new_trie_node (byte p_ch, trie_node_t *parent) {
  trie_node_t *p = zmalloc (sizeof (trie_node_t));
  if (parent != 0) {
    parent->deg++;
  }
  p->ch = 1;
  p->next = 0;
  p->used = 0;
  p->patterns_cnt = 0;
  p->p_ch = p_ch;
  p->parent = parent;
  p->deg = 0;
  return p;
}
