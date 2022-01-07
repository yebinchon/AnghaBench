
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int tl_is_type_name (const char *id, int len) {
  if (len == 1 && *id == '#') { return 1;}
  int ok = id[0] >= 'A' && id[0] <= 'Z';
  int i;
  for (i = 0; i < len - 1; i++) if (id[i] == '.') {
    ok = id[i + 1] >= 'A' && id[i + 1] <= 'Z';
  }
  return ok;
}
