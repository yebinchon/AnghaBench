
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cfg_cur ;
 int cfg_skspc () ;

__attribute__((used)) static int cfg_getword (void) {
  cfg_skspc();
  char *s = cfg_cur;
  if (*s != '[') {
    while ((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') || (*s >= '0' && *s <= '9') || *s == '.' || *s == '-' || *s == '_') {
      s++;
    }
  } else {
    s++;
    while ((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') || (*s >= '0' && *s <= '9') || *s == '.' || *s == '-' || *s == '_' || *s == ':') {
      s++;
    }
    if (*s == ']') {
      s++;
    }
  }
  return s - cfg_cur;
}
