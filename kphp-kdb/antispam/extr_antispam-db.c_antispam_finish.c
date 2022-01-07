
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIMPLIFY_TYPE_COUNT ;
 int antispam_db_request ;
 int heap_pattern ;
 int id_to_pattern ;
 int id_to_pattern_clear (int ) ;
 int list_pattern_clear ;
 int * root ;
 int st_vec_destroy (int ) ;
 int trie_free (int ) ;
 int triple_to_pattern ;
 int triple_to_patterns_clear (int ) ;
 int triple_to_patterns_foreach (int ,int ) ;

void antispam_finish (void) {
  triple_to_patterns_foreach (triple_to_pattern, list_pattern_clear);
  id_to_pattern_clear (id_to_pattern);
  triple_to_patterns_clear (triple_to_pattern);

  int i;
  for (i = 0; i < SIMPLIFY_TYPE_COUNT; i++) {
    trie_free (root[i]);
  }

  st_vec_destroy (heap_pattern);
  st_vec_destroy (antispam_db_request);
}
