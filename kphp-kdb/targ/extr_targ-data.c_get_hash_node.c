
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_word {scalar_t__ word; struct hash_word* next; } ;
typedef scalar_t__ hash_t ;


 int HASH_BUCKETS ;
 struct hash_word** Hash ;
 int hash_word_nodes ;
 struct hash_word* zmalloc0 (int) ;

struct hash_word *get_hash_node (hash_t word, int force) {
  int t = (unsigned) word & (HASH_BUCKETS - 1);
  struct hash_word *p = Hash[t];
  while (p) {
    if (p->word == word) {
      return p;
    }
    p = p->next;
  }
  if (!force) {
    return 0;
  }
  hash_word_nodes++;
  p = zmalloc0 (sizeof (struct hash_word));
  p->word = word;
  p->next = Hash[t];
  Hash[t] = p;
  return p;
}
