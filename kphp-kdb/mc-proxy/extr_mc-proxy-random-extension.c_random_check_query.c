
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eat_at (char const*,int) ;
 int mct_get ;
 int memcmp (char const*,char*,int) ;
 int vkprintf (int,char*,int,char const*,int) ;

int random_check_query (int type, const char *key, int key_len) {
  vkprintf (2, "random_check: type = %d, key = %s, key_len = %d\n", type, key, key_len);
  int l = eat_at (key, key_len);
  key += l;
  key_len -= l;
  if (type == mct_get) {
    return (key_len >= 6 && !memcmp (key, "random", 6)) ||
           (key_len >= 10 && !memcmp (key, "hex_random", 10));
  } else {
    return 1;
  }
}
