
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANSWER_CAPACITY ;
 scalar_t__ MAX_PATTERN_LEN ;
 int SIMPLIFY_TYPE_COUNT ;
 scalar_t__ STRING_PROCESS_BUF_SIZE ;
 int antispam_db_request ;
 int assert (int) ;
 int heap_pattern ;
 int new_trie_node (int ,int ) ;
 int * root ;
 int st_vec_create (int ,int) ;

void antispam_init (void) {
  assert (MAX_PATTERN_LEN <= STRING_PROCESS_BUF_SIZE);

  int i;
  for (i = 0; i < SIMPLIFY_TYPE_COUNT; i++) {
    root[i] = new_trie_node (0, 0);
  }

  st_vec_create (heap_pattern, ANSWER_CAPACITY);
  st_vec_create (antispam_db_request, ANSWER_CAPACITY * 2);
}
