
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put_char_utf8 (int ,char*) ;

void put_string_utf8 (const int *v, char *s) {
  while (*v) {
    s += put_char_utf8 (*v++, s);
  }
  *s = 0;
}
