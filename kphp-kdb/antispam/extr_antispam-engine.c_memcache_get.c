
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int free_tmp_buffers (struct connection*) ;
 int memcache_get_without_free (struct connection*,char const*,int) ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  int ret = memcache_get_without_free (c, key, key_len);
  free_tmp_buffers (c);
  return ret;
}
