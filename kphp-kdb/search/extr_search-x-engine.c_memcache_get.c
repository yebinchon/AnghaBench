
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int do_get_hash (struct connection*,char const*,int,int) ;
 int do_get_rate (struct connection*,char const*,int,int) ;
 int do_search_query (struct connection*,char const*,int,int) ;
 int fprintf (int ,char*,char const*) ;
 int get_at_prefix_length (char const*,int) ;
 int memcmp (char const*,char*,int) ;
 int return_one_key (struct connection*,char const*,int ,int) ;
 int searchx_prepare_stats (struct connection*) ;
 int stats_buff ;
 int stderr ;
 int strncmp (char const*,char*,int) ;
 int verbosity ;
 int worst_search_queries (struct connection*,char const*,int,int) ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  int dog_len = get_at_prefix_length (key, key_len);
  key += dog_len;
  key_len -= dog_len;

  if (key_len >= 5 && !strncmp (key, "stats", 5)) {
    int len = searchx_prepare_stats (c);
    return return_one_key (c, key - dog_len, stats_buff, len);
  }

  if (key_len >= 8 && !strncmp (key, "search", 6)) {
    return do_search_query (c, key, key_len, dog_len);
  }

  if (key_len >= 4 && (!strncmp (key+1, "ate", 3))) {
    do_get_rate (c, key, key_len, dog_len);
    return 0;
  }

  if (key_len >= 4 && (!strncmp (key, "hash", 4))) {
    do_get_hash (c, key, key_len, dog_len);
    return 0;
  }

  if (key_len == 20 && !memcmp (key, "worst_search_queries", 20)) {
    return worst_search_queries (c, key, key_len, dog_len);
  }

  if (verbosity >= 1) {
    fprintf (stderr, "unknown query \"get %s\"\n", key);
  }
  return 0;
}
