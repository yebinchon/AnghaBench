
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int filesys_xfs_prepare_stats (struct connection*) ;
 int return_one_key (struct connection*,char const*,int ,int) ;
 int stats_buffer ;
 int strncmp (char const*,char*,int) ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  if (key_len >= 5 && !strncmp (key, "stats", 5)) {
    int stats_len = filesys_xfs_prepare_stats (c);
    return_one_key (c, key, stats_buffer, stats_len);
    return 0;
  }
  return 0;
}
