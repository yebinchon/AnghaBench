
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cfg_cur ;
 int cfg_skonlyspc () ;
 int cfg_skspc () ;

__attribute__((used)) static int cfg_getword (int allow_newline) {
  if (allow_newline) {
    cfg_skspc();
  } else {
    cfg_skonlyspc();
  }
  char *s = cfg_cur;
  while ((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') || (*s >= '0' && *s <= '9') || *s == '.' || *s == '-' || *s == '_' || *s == ':' || *s == '/' || *s == '[' || *s == ']' || *s == '@') {
    s++;
  }
  return s - cfg_cur;
}
