
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int merge_store (struct connection*,int,char const*,int,int,int,int) ;

int search_store (struct connection *c, int op, const char *key, int key_len, int expire, int flags, int bytes) {
  return merge_store (c, op, key, key_len, expire, flags, bytes);
}
