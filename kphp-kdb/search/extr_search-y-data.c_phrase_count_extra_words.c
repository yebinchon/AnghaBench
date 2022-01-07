
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int words; TYPE_1__** E; } ;
typedef TYPE_2__ searchy_iheap_phrase_t ;
typedef int pos ;
typedef int o ;
struct TYPE_4__ {int* positions; } ;


 int INT_MAX ;
 void* alloca (int) ;
 int assert (int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int phrase_count_extra_words (searchy_iheap_phrase_t *P) {
  const int terms = P->words;

  int i, *o = alloca (sizeof (o[0]) * terms), **pos = alloca (sizeof (pos[0]) * terms);
  for (i = 0; i < terms; i++) {
    pos[i] = P->E[i]->positions;
    assert (pos[i]);
    (pos[i])++;
  }
  memset (o, 0, sizeof (o[0]) * terms);
  int r = INT_MAX;
  for (i = 0; i < pos[0][-1]; i++) {
    int cur = pos[0][i], j;
    for (j = 1; j < terms; j++) {
      int num = pos[j][-1];
      while (o[j] < num && pos[j][o[j]] <= cur) {
        o[j]++;
      }
      if (o[j] >= num) {
        return r - terms;
      }
      cur = pos[j][o[j]];
    }
    const int l = cur - pos[0][i] + 1;
    if (r > l) {

      r = l;
    }
  }
  return r - terms;
}
