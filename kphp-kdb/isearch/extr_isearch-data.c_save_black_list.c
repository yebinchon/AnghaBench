
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trie_arr_node ;


 int assert (int) ;
 int black_list ;
 scalar_t__ buff ;
 int buff2 ;
 int * fd ;
 int trie_arr_aho (int *) ;
 int trie_arr_text_save (int *,int ,int*) ;
 int trie_encode (int ,scalar_t__,int ) ;
 int write (int ,int ,int) ;

int save_black_list (void) {

  trie_encode (black_list, buff, 0);
  int len = 0;
  trie_arr_text_save ((trie_arr_node *)buff, buff2, &len);
  trie_arr_aho ((trie_arr_node *)buff);

  assert (write (fd[1], buff2, len) == len);


  return len;
}
