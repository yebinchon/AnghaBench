
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_query (int,char const*,int) ;

int search_check (int type, const char *key, int key_len) {
  return check_query (type, key, key_len);
}
