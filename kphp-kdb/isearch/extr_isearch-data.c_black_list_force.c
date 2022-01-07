
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trie_arr_node ;


 int aho_black_list ;
 int aho_black_list_size ;
 int black_list ;
 scalar_t__ buff ;
 int dl_free (int ,int ) ;
 int dl_malloc (int ) ;
 int memcpy (int ,scalar_t__,int ) ;
 int trie_arr_aho (int *) ;
 int trie_encode (int ,scalar_t__,int ) ;

void black_list_force (void) {
  dl_free (aho_black_list, aho_black_list_size);

  aho_black_list_size = trie_encode (black_list, buff, 0);
  trie_arr_aho ((trie_arr_node *)buff);
  aho_black_list = dl_malloc (aho_black_list_size);
  memcpy (aho_black_list, buff, aho_black_list_size);
}
