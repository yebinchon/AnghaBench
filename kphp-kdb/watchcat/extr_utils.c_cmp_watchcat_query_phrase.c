
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* H; int words; scalar_t__ minus_flag; } ;
typedef TYPE_1__ watchcat_query_phrase_t ;
typedef int hash_t ;


 int memcmp (scalar_t__*,scalar_t__*,int) ;

inline int cmp_watchcat_query_phrase (const void *x_, const void *y_) {
  const watchcat_query_phrase_t *x = x_;
  const watchcat_query_phrase_t *y = y_;
  if (x->H[0] != y->H[0]) {
    return x->H[0] < y->H[0] ? -1 : +1;
  }
  if (x->words != y->words) {
    return x->words - y->words;
  }
  if (x->minus_flag != y->minus_flag) {
    return x->minus_flag - y->minus_flag;
  }
  return memcmp (x->H, y->H, sizeof (hash_t) * x->words);
}
