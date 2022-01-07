
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct condition_with_hash {void* word2; void* word; void* false_branch; void* true_branch; int eval; } ;
typedef void* hash_t ;
typedef void* condition_t ;
typedef int condition_func_t ;


 struct condition_with_hash* zmalloc (int) ;

__attribute__((used)) static condition_t compile_condition_twowords (hash_t word, hash_t word2, condition_t true_branch, condition_t false_branch, condition_func_t check_word) {
  struct condition_with_hash *A = zmalloc (sizeof (struct condition_with_hash));
  A->eval = check_word;
  A->true_branch = true_branch;
  A->false_branch = false_branch;
  A->word = word;
  A->word2 = word2;
  return (condition_t) A;
}
