
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ op; scalar_t__ frequency; scalar_t__ word; } ;
typedef TYPE_1__ query_node_t ;


 scalar_t__ qn_word ;

__attribute__((used)) static int cmp_query_node (const void *a, const void *b) {
  const query_node_t *x = *((query_node_t **) a);
  const query_node_t *y = *((query_node_t **) b);
  if (x->op == y->op) {
    if (x->op == qn_word) {

      if (x->frequency < y->frequency) { return -1; }
      if (x->frequency > y->frequency) { return 1; }

      if (x->word < y->word) { return -1; }
      if (x->word > y->word) { return 1; }
    }
  } else {
    if (x->op == qn_word) { return -1; }
    if (y->op == qn_word) { return 1; }
  }
  if (x < y) { return -1; }
  if (x > y) { return 1; }
  return 0;
}
