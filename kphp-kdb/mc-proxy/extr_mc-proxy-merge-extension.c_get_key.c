
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* cur_key ;
 int cur_key_len ;
 scalar_t__ strncmp (char const*,char*,int) ;

int get_key (const char *cmd, int len) {
  const char *ptr = cmd, *to = cmd + len;

  if (!len) {
    return 0;
  }

  if (len < 5 || strncmp (cmd, "VALUE", 5)) {
    return 0;
  }
  ptr += 5;

  while (ptr < to && *ptr == ' ') {
    ptr++;
  }
  if (ptr >= to) {
    return 0;
  }
  const char *key = ptr;
  while (ptr < to && (unsigned char) *ptr > ' ') {
    ptr++;
  }
  if (ptr >= to) {
    return 0;
  }
  cur_key = key;
  cur_key_len = ptr - key;
  return 1;
}
