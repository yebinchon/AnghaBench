
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *serialize_list2_new (char *ptr, const char *name, int *list, int num) {
  if (!*list) {
    return ptr;
  }
  ptr += sprintf (ptr, "s:%ld:\"%s\";a:%d:{", (long) strlen (name), name, *list);
  int i;
  for (i = 0; i < 2 * (*list); i++) {
    ptr += sprintf (ptr, "i:%d;", list[i + 1]);
  }
  *ptr++ = '}';
  return ptr;
}
