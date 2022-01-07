
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phrases_cnt; TYPE_2__* phrases; } ;
typedef TYPE_1__ watchcat_query_t ;
struct TYPE_5__ {int words; scalar_t__* H; scalar_t__ minus_flag; } ;
typedef TYPE_2__ watchcat_query_phrase_t ;



long long watchcat_query_hash_impl (watchcat_query_t *query) {
  long long query_hash = 0x1234123412341234LL;
  int was_plus = 0;
  int i;
  for (i = 0; i < query->phrases_cnt; i++) {
    watchcat_query_phrase_t *phrase = &query->phrases[i];
    query_hash *= 0x4321432143214321LL;
    long long phrase_hash = 0x1234567812345678LL;
    if (phrase->minus_flag) {
      phrase_hash++;
    } else {
      was_plus = 1;
    }
    phrase_hash += phrase->minus_flag;
    int j;
    for (j = 0; j < phrase->words; j++) {
      phrase_hash *= 0x8765432187654321LL;
      phrase_hash += phrase->H[j];
    }

    query_hash += phrase_hash;
  }

  if (!was_plus) {


    return -1;
  }

  return query_hash;
}
