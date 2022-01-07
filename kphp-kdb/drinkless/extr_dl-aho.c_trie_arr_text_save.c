
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int en; char* edges; scalar_t__ is_end; } ;
typedef TYPE_1__ trie_arr_node ;


 TYPE_1__* TSHIFT (TYPE_1__*,char) ;

void trie_arr_text_save (trie_arr_node *v, char *buff, int *bn) {
  static char s[100000];
  static int sn = 0;
  int i;
  if (v->is_end) {
    s[sn] = 0;

    for (i = 0; i < sn; i++) {
      buff[(*bn)++] = s[i];
    }
    buff[(*bn)++] = '\t';
  }

  for (i = 0; i < v->en; i++) {
    s[sn++] = v->edges[i * 2 + 1];

    trie_arr_text_save (TSHIFT(v, v->edges[2 * i]), buff, bn);
    sn--;
  }
}
