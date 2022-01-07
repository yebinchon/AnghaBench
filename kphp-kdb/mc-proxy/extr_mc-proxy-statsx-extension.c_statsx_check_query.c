
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eat_at (char const*,int) ;
 int mct_get ;
 int strncmp (char const*,char*,int) ;

int statsx_check_query (int type, const char *key, int key_len) {
  if (type != mct_get) {
    return 0;
  }
  int l = eat_at (key, key_len);
  key += l;
  key_len -= l;
  if (key[0] == '%') {
    key ++;
    key_len --;
  }
  return ((key_len >= 7) && !strncmp (key, "counter", 7)) || ((key_len >= 5) && !strncmp (key, "views", 5)) || ((key_len >= 8) && !strncmp (key, "visitors", 8)) || (key_len >= 8 && !strncmp (key, "versions", 8)) ||
         (key_len >= 13 && !strncmp (key, "monthly_views", 13)) || (key_len >= 16 && !strncmp (key, "monthly_visitors", 16));
}
