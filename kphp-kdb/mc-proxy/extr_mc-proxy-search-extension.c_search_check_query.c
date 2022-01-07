
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SEARCHX_EXTENSION ;
 scalar_t__ SEARCH_EXTENSION ;
 int eat_at (char const*,int) ;
 int mct_get ;
 int memcmp (char const*,char*,int) ;
 int strncmp (char const*,char*,int) ;

int search_check_query (int type, const char *key, int key_len) {
  if (type != mct_get) {
    return 0;
  }

  int l = eat_at (key, key_len);
  key += l;
  key_len -= l;

  if (SEARCH_EXTENSION || SEARCHX_EXTENSION) {
    return (key_len >= 6 && !memcmp (key, "search", 6));
  } else {
    return (key_len >= 7 && !strncmp (key, "search(", 7)) || (key_len >= 6 && !strncmp (key, "target", 6))
           || (key_len >= 6 && !strncmp (key, "prices", 6)) || (key_len >= 3 && !strncmp (key, "ad_", 3)); }
}
