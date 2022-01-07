
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_word {int sum; } ;
typedef int hash_t ;


 struct hash_word* get_hash_node (int ,int ) ;
 int get_idx_word_list_len (int ) ;

int get_word_count_nomult (hash_t word) {
  struct hash_word *W = get_hash_node (word, 0);
  return get_idx_word_list_len (word) + (W ? W->sum : 0);
}
