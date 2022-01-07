
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int VALUE_BUFFSIZE ;
 int get_at_prefix_length (char const*,int) ;
 int get_queries ;
 int random_get_bytes (int ,int) ;
 int random_get_hex_bytes (int ,int) ;
 int random_prepare_stats (struct connection*) ;
 int return_one_key (struct connection*,char const*,int ,int) ;
 int sscanf (char const*,char*,int*) ;
 int stats_buff ;
 int strncmp (char const*,char*,int) ;
 int value_buff ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  int n;
  int dog_len = get_at_prefix_length (key, key_len);
  key += dog_len;
  key_len -= dog_len;

  if (key_len >= 6 && !strncmp (key, "random", 6) && sscanf (key + 6, "%d", &n) == 1 && n > 0 && n <= VALUE_BUFFSIZE) {
    get_queries++;
    int r = random_get_bytes (value_buff, n);
    return_one_key (c, key - dog_len, value_buff, r);
    return 0;
  }

  if (key_len >= 10 && !strncmp (key, "hex_random", 10) && sscanf (key + 10, "%d", &n) == 1 && n > 0 && n <= VALUE_BUFFSIZE) {
    get_queries++;
    int r = random_get_hex_bytes (value_buff, n);
    return_one_key (c, key - dog_len, value_buff, r);
    return 0;
  }

  if (key_len >= 5 && !strncmp (key, "stats", 5)) {
    int stats_len = random_prepare_stats (c);
    return_one_key (c, key - dog_len, stats_buff, stats_len);
    return 0;
  }

  return 0;
}
