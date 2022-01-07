
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cfg_cur ;
 int cfg_skspc () ;

__attribute__((used)) static int cfg_getint (void) {
  cfg_skspc();
  char *s = cfg_cur;
  int x = 0;
  while (*s >= '0' && *s <= '9') {
    x = x*10 + (*s++ - '0');
  }
  cfg_cur = s;
  return x;
}
