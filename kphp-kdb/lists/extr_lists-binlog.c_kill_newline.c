
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

void kill_newline(char *s) {
  char *p = strchr(s, '\n');
  if (p != 0) *p = 0;
}
