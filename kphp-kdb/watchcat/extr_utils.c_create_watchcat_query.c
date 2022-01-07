
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int words; int phrases_cnt; int * phrases; void* words_buf; } ;
typedef TYPE_1__ watchcat_query_t ;
typedef int watchcat_query_phrase_t ;
struct TYPE_8__ {int words; int words_buf; int * phrases; } ;
typedef TYPE_2__ searchy_query_t ;
typedef int hash_t ;


 int assert (int) ;
 int cmp_watchcat_query_phrase ;
 void* dl_malloc (int) ;
 TYPE_1__* dl_malloc0 (int) ;
 int memcpy (void*,int ,size_t) ;
 int qsort (int *,int,int,int ) ;
 int * searchy_phrases_dump (int *,int ,int,void*,int ) ;
 int searchy_phrases_length (int ) ;
 int searchy_query_free (TYPE_2__*) ;
 int searchy_query_parse (TYPE_2__*,char*) ;

watchcat_query_t *create_watchcat_query (char *s) {
  static searchy_query_t Q;
  searchy_query_parse (&Q, s);

  searchy_query_t *from = &Q;
  watchcat_query_t *to = dl_malloc0 (sizeof (watchcat_query_t));
  to->words = from->words;
  size_t words_size = sizeof (hash_t) * to->words;
  to->words_buf = dl_malloc (words_size);
  memcpy (to->words_buf, from->words_buf, words_size);

  int phrases_cnt_0 = searchy_phrases_length (from->phrases[0]);
  int phrases_cnt_1 = searchy_phrases_length (from->phrases[1]);
  to->phrases_cnt = phrases_cnt_0 + phrases_cnt_1;

  to->phrases = dl_malloc (sizeof (watchcat_query_phrase_t) * to->phrases_cnt);
  watchcat_query_phrase_t *phrase_ptr = to->phrases;
  phrase_ptr = searchy_phrases_dump (
      phrase_ptr, from->phrases[0], 0, to->words_buf, from->words_buf
  );
  phrase_ptr = searchy_phrases_dump (
      phrase_ptr, from->phrases[1], 1, to->words_buf, from->words_buf
  );
  assert (phrase_ptr == to->phrases + to->phrases_cnt);

  qsort (to->phrases, to->phrases_cnt, sizeof (watchcat_query_phrase_t), cmp_watchcat_query_phrase);

  searchy_query_free (&Q);
  return to;
}
