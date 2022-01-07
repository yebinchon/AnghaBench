
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int p_ch; struct TYPE_4__* parent; } ;
typedef TYPE_1__ trie_node_t ;
struct TYPE_5__ {int ip; int uahash; scalar_t__ flags; TYPE_1__* trie_node; } ;
typedef TYPE_2__ pattern_t ;


 int FALSE ;
 int MAX_PATTERN_LEN ;
 int TRUE ;
 int assert (int) ;
 int id_to_pattern ;
 TYPE_2__* id_to_pattern_find (int ,int) ;
 int sprintf (char*,char*,int,int,int,unsigned short) ;

bool antispam_serialize_pattern (int id, char *output ) {
  pattern_t *pattern = id_to_pattern_find (id_to_pattern, id);
  if (pattern == 0) {
    return FALSE;
  }
  trie_node_t *v = pattern->trie_node;

  int length = 0;
  trie_node_t const *p = v;
  for (; p->parent != 0; p = p->parent) {
    ++length;
  }
  assert (length + 40 <= MAX_PATTERN_LEN);

  output += sprintf (output, "%d,%u,%u,%hu,", id, pattern->ip, pattern->uahash, (unsigned short)pattern->flags);

  output += length;
  *output-- = 0;
  for (p = v; p->parent != 0; p = p->parent) {
    *output-- = p->p_ch;
  }
  return TRUE;
}
