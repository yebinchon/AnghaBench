
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int do_search_query (struct connection*,char*,int) ;

int search_create (struct connection *c, char *key, int key_len) {
  return do_search_query (c, key, key_len);
}
