
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trie_arr_node ;


 int black_list ;
 scalar_t__ buff ;
 char* buff2 ;
 int trie_arr_text_save (int *,char*,int*) ;
 int trie_encode (int ,scalar_t__,int ) ;

char *black_list_get (void) {
  trie_encode (black_list, buff, 0);
  int len = 0;
  trie_arr_text_save ((trie_arr_node *)buff, buff2, &len);
  if (len) {
    len--;
  }

  buff2[len] = 0;
  return buff2;
}
