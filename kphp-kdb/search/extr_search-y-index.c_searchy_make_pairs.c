
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int position; int word; } ;


 int MAX_WORDS ;
 TYPE_1__* Q ;
 int keep_pair (int,int ,int ) ;
 int searchy_extract_words (char const*,int,TYPE_1__*,int ,int ,int ,long long,int*) ;
 int tag_owner ;
 int universal ;

__attribute__((used)) static void searchy_make_pairs (const char *text, int len, int doc_id, long long item_id, int *positions) {
  int i, Qw = searchy_extract_words (text, len, Q, MAX_WORDS, universal, tag_owner, item_id, positions);
  for (i = 0; i < Qw; i++) {
    keep_pair (doc_id, Q[i].word, Q[i].position);
  }
}
