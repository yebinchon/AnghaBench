
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ verbosity ;

int exec_delete (struct connection *c, char *str, int len) {

  while (*str == ' ') { str++; }

  if (verbosity > 0) {
    fprintf (stderr, "delete \"%s\"\n", str);
  }

  return 0;
}
