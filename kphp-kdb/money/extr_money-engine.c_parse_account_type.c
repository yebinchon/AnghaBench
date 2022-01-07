
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int parse_account_type (char *ptr, char **endptr) {
  int i, res = 0;

  for (i = 0; i < 3; i++) {
    if (*ptr < 'A' || *ptr > 'Z') {
      break;
    }
    res = res * 27 + (*ptr - 'A') + 1;
    ++ptr;
  }

  *endptr = ptr;
  return res;
}
