
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEARCHX_EXTENSION ;
 int assert (int ) ;
 int eat_at (char const*,int) ;
 int mct_get ;
 scalar_t__ search_check_query (int,char const*,int) ;
 int strncmp (char const*,char*,int) ;

int searchx_check_query (int type, const char *key, int key_len) {
  if (type != mct_get) {
    return 0;
  }

  int l = eat_at (key, key_len);
  key += l;
  key_len -= l;

  assert (SEARCHX_EXTENSION);

  return (key_len >= 7 && !strncmp (key, "searchx", 7)) || (key_len >= 7 && !strncmp (key, "searchu", 7)) || search_check_query (type, key, key_len);
}
