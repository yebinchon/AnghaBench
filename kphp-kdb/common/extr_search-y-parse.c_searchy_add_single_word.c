
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ words; } ;
typedef TYPE_1__ searchy_query_t ;
struct TYPE_8__ {int words; int * H; } ;
typedef TYPE_2__ searchy_query_phrase_t ;
typedef enum searchy_query_phrase_type { ____Placeholder_searchy_query_phrase_type } searchy_query_phrase_type ;


 scalar_t__ SEARCHY_MAX_QUERY_WORDS ;
 TYPE_2__* searchy_phrase_alloc (TYPE_1__*,int,int) ;
 int searchy_query_contains_too_many_words (TYPE_1__*) ;
 int searchy_word_hash (char const*,int) ;

__attribute__((used)) static int searchy_add_single_word (searchy_query_t *Q, const char *text, int len, enum searchy_query_phrase_type type, int minus) {
  if (Q->words >= SEARCHY_MAX_QUERY_WORDS) {
    searchy_query_contains_too_many_words (Q);
    return -1;
  }
  searchy_query_phrase_t *P = searchy_phrase_alloc (Q, type, minus);
  P->H[P->words++] = searchy_word_hash (text, len);
  Q->words++;
  return 0;
}
