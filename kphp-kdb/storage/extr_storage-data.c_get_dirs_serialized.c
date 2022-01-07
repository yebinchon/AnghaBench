
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Dirs ;
 int dirs ;
 int get_dir_serialized (char*,scalar_t__) ;
 int sprintf (char*,char*,...) ;

int get_dirs_serialized (char *buffer) {
  int i;
  char *p = buffer;
  p += sprintf (p, "a:%d:{", dirs);
  for (i = 0; i < dirs; i++) {
    p += sprintf (p, "i:%d;", i);
    p += get_dir_serialized (p, Dirs + i);
  }
  p += sprintf (p, "}");
  return 0;
}
