
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int word; } ;
typedef TYPE_1__ query_node_t ;
typedef int hash_t ;


 TYPE_1__* new_query_node (int ) ;
 int qn_word ;

__attribute__((used)) static query_node_t *query_word_node (hash_t word) {
  query_node_t *X = new_query_node (qn_word);
  if (!X) {
    return 0;
  }
  X->word = word;
  return X;
}
