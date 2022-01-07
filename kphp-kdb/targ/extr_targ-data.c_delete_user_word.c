
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_word {int sum; int num; int word_tree; } ;
typedef int hash_t ;


 int WordSpace ;
 struct hash_word* get_hash_node (int ,int) ;
 int intree_incr_z (int ,int ,int,int,int *) ;

void delete_user_word (int uid, hash_t word) {
  struct hash_word *W = get_hash_node (word, 1);

  W->word_tree = intree_incr_z (WordSpace, W->word_tree, uid, -1, &W->num);
  --W->sum;
}
