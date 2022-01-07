
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long freq; int code_len; char* len; int str; struct TYPE_4__* next; } ;
typedef TYPE_1__ word_t ;
struct TYPE_5__ {TYPE_1__** A; } ;
typedef TYPE_2__ word_hash_t ;


 int PRIME ;
 int dict_size ;
 int fprintf (int ,char*,char*,int ,long long,int) ;
 int stderr ;
 int verbosity ;

long long export_codelen (long long *table, word_hash_t *Set) {
  int i;
  word_t *ptr;
  long long sum = 0;
  for (i = 0; i < PRIME; i++) {
    for (ptr = Set->A[i]; ptr; ptr = ptr->next) {
      if (ptr->freq > 0) {
 ptr->code_len = *table++;
 sum += (long long) ptr->code_len * ptr->freq;
 dict_size += ptr->len;
 if (ptr->code_len <= 10 && verbosity > 1) {
   fprintf (stderr, "'%.*s'\t%lld\t%d\n", ptr->len, ptr->str, ptr->freq, ptr->code_len);
 }
      }
    }
  }
  return sum;
}
