
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generate_new_key (char*,char*,int,int) ;
 int prepare_search_query (char*,int) ;

int search_merge_generate_new_key (char *buff, char *key, int key_len, void *E) {
  int i = prepare_search_query (key, key_len);
  return generate_new_key (buff, key, key_len, i);
}
