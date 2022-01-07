
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freqs; int word; } ;


 int MAX_WORDS ;
 TYPE_1__* Q ;
 int extract_words (char const*,int,int ,TYPE_1__*,int ,int ,long long) ;
 int keep_pair (int,int ,int ) ;
 int tag_owner ;
 int universal ;

__attribute__((used)) static void search_make_pairs (const char *text, int len, int doc_id, long long item_id) {
  int i, Qw = extract_words (text, len, universal, Q, MAX_WORDS, tag_owner, item_id);
  for (i = 0; i < Qw; i++) {
    keep_pair (doc_id, Q[i].word, Q[i].freqs);
  }
}
