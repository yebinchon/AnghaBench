
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;

int get_at_prefix_length (const char *key, int key_len) {
  int i = 0;
  if (key_len > 0 && key[0] == '!') {
    i++;
  }
  if (i < key_len && key[i] == '-') {
    i++;
  }
  int j = i;
  while (j < key_len && isdigit (key[j])) {
    j++;
  }
  if (i == j) {
    return 0;
  }
  if (j < key_len && key[j] == '@') {
    return j + 1;
  }
  return 0;
}
