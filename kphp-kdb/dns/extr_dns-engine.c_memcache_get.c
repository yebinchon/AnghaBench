
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int dns_prepare_stats (struct connection*) ;
 int get_at_prefix_length (char const*,int) ;
 int memcmp (char const*,char*,int) ;
 int return_one_key (struct connection*,char const*,int ,int) ;
 int stats_buff ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  int dog_len = get_at_prefix_length (key, key_len);
  key += dog_len;
  key_len -= dog_len;
  if (key_len >= 5 && !memcmp (key, "stats", 5)) {
    int len = dns_prepare_stats (c);
    return return_one_key (c, key - dog_len, stats_buff, len);
  }
  return 0;
}
