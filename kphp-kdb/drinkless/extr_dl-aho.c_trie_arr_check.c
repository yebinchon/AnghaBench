
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ is_end; scalar_t__ suff; } ;
typedef TYPE_1__ trie_arr_node ;
typedef scalar_t__ CHAR ;


 TYPE_1__* TSHIFT (TYPE_1__*,scalar_t__) ;
 scalar_t__ trie_arr_getc (TYPE_1__*,scalar_t__) ;

int trie_arr_check (trie_arr_node *v, CHAR *s) {
  int res = 0;
  while (*s) {
    while (v->suff && !trie_arr_getc (v, *s)) {
      v = TSHIFT (v, v->suff);
    }
    v = TSHIFT (v, trie_arr_getc (v, *s));
    s++;
    res++;
    if (v->is_end) {
      return res;
    }
  }
  return 0;
}
