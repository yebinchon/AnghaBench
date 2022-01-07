
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int eat_at (const char *key, int key_len) {
  if (!key_len) {
    return 0;
  }
  int p = 0;
  if (key[p] == '-') {
    p++;
  }
  while (p < key_len && key[p] >= '0' && key[p] <= '9') {
    p++;
  }
  if (p == key_len || p == 0 || key[p] != '@') {
    return 0;
  } else {
    p++;
    return p;
  }
}
