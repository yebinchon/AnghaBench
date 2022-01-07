
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atom_value {int * s; } ;


 int used_atom_cnt ;
 int * xstrdup (char*) ;

__attribute__((used)) static void fill_missing_values(struct atom_value *val)
{
 int i;
 for (i = 0; i < used_atom_cnt; i++) {
  struct atom_value *v = &val[i];
  if (v->s == ((void*)0))
   v->s = xstrdup("");
 }
}
