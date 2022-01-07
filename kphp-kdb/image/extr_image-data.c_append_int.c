
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_output {int l; scalar_t__ s; } ;


 int snprintf (scalar_t__,int,char*,int) ;

__attribute__((used)) static void append_int (struct forth_output *O, int i) {
  if (O == ((void*)0)) { return; }
  int o = (sizeof (O->s) - O->l) - 2;
  if (o <= 0) { return; }
  int sz = snprintf (O->s + O->l, o, "%d\n", i);
  if (sz < 0 || sz >= o) { return; }
  O->l += sz;
}
