
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code; int is_end; struct TYPE_4__* h; struct TYPE_4__* v; scalar_t__ cnt; } ;
typedef TYPE_1__ trie_node ;
struct TYPE_5__ {int* edges; int en; int is_end; } ;
typedef TYPE_2__ trie_arr_node ;


 int assert (int) ;
 int cmp_tx ;
 int qsort (int*,int,int,int ) ;

size_t trie_encode (trie_node *v, char *buff, int is_end) {
  char *st = buff;

  size_t vsize = sizeof (int) * 3;

  int en = 0;
  trie_node *tv = v;

  trie_arr_node *nv = (trie_arr_node *)st;
  assert (vsize == (char *)&nv->edges - (char *)nv);

  while (tv != ((void*)0)) {
    en += !!tv->cnt;
    tv = tv->h;
  }

  vsize += sizeof (int) * 2 * en;
  buff += vsize;

  tv = v;
  int in = 0;
  while (tv != ((void*)0)) {
    if (tv->cnt) {
      nv->edges[in * 2 + 1] = tv->code;
      nv->edges[in * 2] = buff - st;
      buff += trie_encode (tv->v, buff, tv->is_end);
      in++;
    }

    tv = tv->h;
  }

  qsort (nv->edges, en, sizeof (int) * 2, cmp_tx);

  nv->en = en;
  nv->is_end = is_end;

  return buff - st;
}
