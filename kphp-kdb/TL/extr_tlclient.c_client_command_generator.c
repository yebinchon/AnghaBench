
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 TYPE_1__* CMD ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static char *client_command_generator (const char *text, int state) {
  static int len;
  static int idx;
  if (!state) {
    idx = 0;
    len = strlen (text);
    if (!strncmp ("(", text, len)) {
      return strdup ("(");
    }
  }
  while (1) {
    const char *name = CMD[idx++].name;
    if (name == ((void*)0)) {
      break;
    }
    if (!strncmp (name, text, len)) {
      return strdup (name);
    }
  }
  return ((void*)0);
}
