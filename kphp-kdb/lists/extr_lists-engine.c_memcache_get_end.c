
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int free_tmp_buffers (struct connection*) ;
 int mcs_get_end (struct connection*,int) ;
 int vkprintf (int,char*,int) ;

int memcache_get_end (struct connection *c, int key_count) {
  vkprintf (1, "memcache_get_end: %d keys requested\n", key_count);
  free_tmp_buffers (c);
  return mcs_get_end (c, key_count);
}
