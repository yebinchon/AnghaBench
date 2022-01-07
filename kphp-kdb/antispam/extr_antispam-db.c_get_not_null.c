
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ next; scalar_t__ ch; } ;
typedef TYPE_1__ trie_node_t ;
typedef int byte ;



__attribute__((used)) static trie_node_t **get_not_null (trie_node_t *v, byte i) {
  if (v->ch) {
    return (trie_node_t **)&v->next;
  } else {
    return ((trie_node_t **)v->next) + i;
  }
}
