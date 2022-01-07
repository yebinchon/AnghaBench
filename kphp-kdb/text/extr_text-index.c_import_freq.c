
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int freq; struct TYPE_4__* next; } ;
typedef TYPE_1__ word_t ;
struct TYPE_5__ {TYPE_1__** A; } ;
typedef TYPE_2__ word_hash_t ;


 int PRIME ;

long import_freq (long long *table, const word_hash_t *Set) {
  long cnt = 0;
  int i;
  const word_t *ptr;
  for (i = 0; i < PRIME; i++) {
    for (ptr = Set->A[i]; ptr; ptr = ptr->next) {
      if (ptr->freq > 0) {
 *table++ = ptr->freq;
 cnt++;
      }
    }
  }
  return cnt;
}
