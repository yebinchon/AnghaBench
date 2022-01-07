
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void split_by_as (char *s, char **name) {
  int bal = 0;

  *name = ((void*)0);

  while (*s) {
    if (*s == '(' || *s == '[') {
      bal++;
    } else if (*s == ')' || *s == ']') {
      bal--;
    } else if (*s == ' ' && *(s + 1) == 'A' && *(s + 2) == 'S' && *(s + 3) == ' ' && bal == 0) {
      *s = 0;
      *name = s + 4;
      break;
    }
    s++;
  }
}
