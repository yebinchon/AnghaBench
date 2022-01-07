
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int field_n ;
 int * field_name ;
 int* field_name_len ;
 int strlen (char const*) ;
 int strncmp (int ,char const*,int) ;

int get_field (const char *name) {
  int l = strlen (name), i;
  for (i = 0; i < field_n; i++) {
    if (field_name_len[i] == l && !strncmp (field_name[i], name, l)) {
      return i;
    }
  }
  return -1;
}
