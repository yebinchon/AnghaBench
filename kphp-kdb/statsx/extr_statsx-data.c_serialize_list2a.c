
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *serialize_list2a (char *ptr, const char *name, int *list, int num) {
  ptr += sprintf (ptr, "s:%ld:\"%s\";a:%d:{", (long) strlen (name), name, num);
  int i;
  for (i = 0; i < 2*num; i++) {
    static char t[4];
    t[0] = (char)((list[i]>>16) & 0xff);
    t[1] = (char)((list[i]>>8) & 0xff);
    t[2] = (char)(list[i] & 0xff);
    t[3] = 0;
    ptr += (i&1) ? sprintf (ptr, "i:%d;", list[i]) : sprintf(ptr, "s:%d:\"%s\";", (int)strlen (t), t);
  }
  *ptr++ = '}';
  return ptr;
}
