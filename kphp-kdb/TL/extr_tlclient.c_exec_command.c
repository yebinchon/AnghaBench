
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* f ) (char*) ;scalar_t__ name; } ;


 TYPE_1__* CMD ;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strncmp (scalar_t__,char*,int) ;
 int stub1 (char*) ;

int exec_command (char *input) {
  char *p = strchr (input, ' ');
  if (p == ((void*)0)) {
    p = input + strlen (input);
  }
  int l = p - input;
  while (*p && isspace (*p)) {
    p++;
  }
  int k;
  for (k = 0; CMD[k].name; k++) {
    if (!strncmp (CMD[k].name, input, l)) {
      return CMD[k].f (p);
    }
  }
  return -1;
}
