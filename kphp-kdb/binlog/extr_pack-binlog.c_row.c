
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;
 int putchar (char) ;
 int strlen (char const*) ;

void row (const char *key) {
  int i = strlen (key) + 1;
  printf ("%s:", key);
  while (i < 17) {
    putchar (' ');
    i++;
  }
}
