
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *serialize_list2a (char *ptr, const char *name, int *list, int num) {
  int x = 0;
  while (x < num && list[2 * x + 1]) {
    x ++;
  }
  if (!x) {
    return ptr;
  }
  ptr += sprintf (ptr, "s:%ld:\"%s\";a:%d:{", (long) strlen (name), name, x);
  int i;
  for (i = 0; i < 2*x; i++) {
    ptr += (i&1) ? sprintf (ptr, "i:%d;", list[i]) : sprintf(ptr, "s:3:\"%c%c%c\";", (char)((list[i]>>16) & 0xff), (char)((list[i]>>8) & 0xff), (char)(list[i] & 0xff));
  }
  *ptr++ = '}';
  return ptr;
}
