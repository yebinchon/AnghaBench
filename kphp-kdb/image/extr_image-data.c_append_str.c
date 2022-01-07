
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_output {int l; scalar_t__ s; } ;


 int snprintf (scalar_t__,int,char*,char*) ;

__attribute__((used)) static void append_str (struct forth_output *O, char *s) {
  if (O == ((void*)0)) { return; }
  int o = (sizeof (O->s) - O->l) - 2;
  if (o <= 0) { return; }
  int sz = snprintf (O->s + O->l, o, "%s\n", s);
  if (sz < 0 || sz >= o) { return; }
  O->l += sz;
}
