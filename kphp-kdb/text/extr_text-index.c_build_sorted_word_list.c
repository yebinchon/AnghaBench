
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ freq; struct TYPE_6__* next; } ;
typedef TYPE_1__ word_t ;
struct TYPE_7__ {TYPE_1__** A; } ;
typedef TYPE_2__ word_hash_t ;


 int PRIME ;
 int assert (int) ;
 int fprintf (int ,char*,long long,long long) ;
 int stderr ;
 int word_sort (TYPE_1__**,long) ;

void build_sorted_word_list (word_t *List[], word_hash_t *Set, long N) {
  int i;
  word_t **cur = List, **last = cur + N, *ptr;
  for (i = 0; i < PRIME; i++) {
    for (ptr = Set->A[i]; ptr; ptr = ptr->next) {
      if (ptr->freq > 0) {
        *cur++ = ptr;
        assert (cur <= last);
      }
    }
  }
  if (cur != last) {
    fprintf (stderr, "expected %lld words, found %lld\n", (long long) N, (long long) (last - List));
  }
  assert (cur == last);
  word_sort (List, N-1);
}
