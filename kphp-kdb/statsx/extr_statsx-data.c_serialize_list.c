
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *serialize_list (char *ptr, const char *name, int *list, int num) {
  int i, cnt = 0;
  for (i = 0; i < num; i++) {
    if (list[i]) { cnt++; }
  }
  ptr += sprintf (ptr, "s:%ld:\"%s\";a:%d:{", (long) strlen(name), name, cnt);
  for (i = 0; i < num; i++) {
    if (list[i]) {
      ptr += sprintf (ptr, "i:%d;i:%d;", i+1, list[i]);
    }
  }
  *ptr++ = '}';
  return ptr;
}
