
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int exec_mc_store (int,struct connection*,char*,int,int,int,int,int) ;
 int strtol (char*,char**,int) ;

int parse_mc_store (int op, struct connection *c, char *str, int len) {
  char *key, *ptr;
  int key_len, flags, expire, bytes, noreply;

  while (*str == ' ') str++;
  key = str;
  while (*str > ' ') str++;
  key_len = str - key;
  if (!key_len || *str != ' ') return -1;

  flags = strtol (str, &ptr, 10);
  if (ptr == str) return -1;
  str = ptr;

  expire = strtol (str, &ptr, 10);
  if (ptr == str) return -1;
  str = ptr;

  bytes = strtol (str, &ptr, 10);
  if (ptr == str) return -1;
  str = ptr;

  noreply = strtol (str, &ptr, 10);
  if (ptr == str) { noreply = 0; } else { str = ptr; }

  while (*str == ' ') str++;
  if (*str) return -1;

  return exec_mc_store (op, c, key, key_len, flags, expire, bytes, noreply);
}
