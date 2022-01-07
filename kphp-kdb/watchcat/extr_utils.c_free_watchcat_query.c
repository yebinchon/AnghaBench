
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int phrases_cnt; int words; struct TYPE_4__* words_buf; struct TYPE_4__* phrases; } ;
typedef TYPE_1__ watchcat_query_t ;
typedef int watchcat_query_phrase_t ;
typedef int hash_t ;


 int dl_free (TYPE_1__*,int) ;

void free_watchcat_query (watchcat_query_t *to) {
  dl_free (to->phrases, sizeof (watchcat_query_phrase_t) * to->phrases_cnt);
  dl_free (to->words_buf, sizeof (hash_t) * to->words);
  dl_free (to, sizeof (watchcat_query_t));
}
