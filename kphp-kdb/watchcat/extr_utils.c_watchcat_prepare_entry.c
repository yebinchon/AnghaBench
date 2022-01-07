
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; TYPE_3__* by_hash; int by_pos; } ;
typedef TYPE_1__ watchcat_entry_t ;
typedef int searchy_pair_word_position_t ;
struct TYPE_6__ {int position; } ;


 int MAX_WATCHCAT_ENTRY_SIZE ;
 int cmp_spwp_by_hash ;
 int memcpy (TYPE_3__**,int *,int) ;
 int qsort (TYPE_3__**,int,int,int ) ;
 int searchy_extract_words (char const*,int,int ,int ,int ,int ,int ,int*) ;

void watchcat_prepare_entry (watchcat_entry_t *entry, const char *text, int len) {
  int positions = 0;
  int n = searchy_extract_words (text, len, entry->by_pos, MAX_WATCHCAT_ENTRY_SIZE, 0, 0, 0, &positions);
  entry->n = n;
  memcpy (&entry->by_hash, &entry->by_pos, sizeof (searchy_pair_word_position_t) * n);

  int i;
  for (i = 0; i < n; i++) {
    entry->by_hash[i].position = i;
  }

  qsort (&entry->by_hash, n, sizeof (searchy_pair_word_position_t), cmp_spwp_by_hash);
}
