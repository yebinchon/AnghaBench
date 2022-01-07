
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const* const) ;

__attribute__((used)) static int get_max_save_size (const char *const s) {
  if (strlen (s) != 1) {
    return 5;
  }
  switch (s[0]) {
  case 'w': return 5;
  case 'z': return 4;
  case 'y': return 3;
  case 'x': return 2;
  case 'm': return 1;
  case 's': return 0;
  default: return 5;
  }
}
