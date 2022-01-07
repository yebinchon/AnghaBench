
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*) ;

int statsx_merge_generate_new_key (char *buff, char *key, int key_len, void *E) {
  int l;
  if (key[0] == '%') {
    l = sprintf (buff, "%s", key);
  } else {
    l = sprintf (buff, "%%%s", key);
  }
  if (buff[l - 1] == '!') {
    buff[--l] = 0;
  }
  return l;
}
