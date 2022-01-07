
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * aho_black_list ;
 int trie_arr_check (int *,char*) ;

int black_list_check (char *s) {
  if (aho_black_list == ((void*)0)) {
    return 0;
  }
  return trie_arr_check (aho_black_list, s);
}
