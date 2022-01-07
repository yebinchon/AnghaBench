
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eat_at (char const*,int) ;
 int strncmp (char const*,char*,int) ;

int statsx_one_int (const char *key, int key_len) {
  int l = eat_at (key, key_len);
  key += l;
  key_len -= l;
  if (key[0] == '%') {
    key ++;
    key_len --;
  }
  return ((key_len >= 5) && !strncmp (key, "views", 5)) || ((key_len >= 8) && !strncmp (key, "visitors", 8));
}
