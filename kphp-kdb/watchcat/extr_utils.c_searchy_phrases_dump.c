
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int minus_flag; int type; int words; int * H; } ;
typedef TYPE_1__ watchcat_query_phrase_t ;
struct TYPE_7__ {struct TYPE_7__* next; int type; int words; int * H; } ;
typedef TYPE_2__ searchy_query_phrase_t ;
typedef int hash_t ;



watchcat_query_phrase_t *searchy_phrases_dump (watchcat_query_phrase_t *dest, searchy_query_phrase_t *cur,
  int minus_flag, hash_t *dest_words_buf, hash_t *src_words_buf) {
  while (cur != ((void*)0)) {
    dest->H = dest_words_buf + (cur->H - src_words_buf);
    dest->words = cur->words;
    dest->type = cur->type;
    dest->minus_flag = minus_flag;
    dest++;
    cur = cur->next;
  }
  return dest;
}
