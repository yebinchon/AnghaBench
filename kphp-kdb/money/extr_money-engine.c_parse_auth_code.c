
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int parse_auth_code (char *ptr) {
  int i;

  for (i = 0; i < 32; i++) {
    if ((ptr[i] < 'a' && ptr[i] > '9') || ptr[i] < '0' || ptr[i] > 'f') {
      return 0;
    }
  }

  return 32;
}
