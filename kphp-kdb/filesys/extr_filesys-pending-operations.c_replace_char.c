
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void replace_char (char *s, char old, char new) {
  while (*s) {
    if (*s == old) {
      *s = new;
    }
    s++;
  }
}
