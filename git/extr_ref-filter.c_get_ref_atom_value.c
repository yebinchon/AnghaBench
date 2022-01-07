
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_array_item {struct atom_value* value; } ;
struct atom_value {int dummy; } ;


 int fill_missing_values (struct atom_value*) ;
 scalar_t__ populate_value (struct ref_array_item*,struct strbuf*) ;

__attribute__((used)) static int get_ref_atom_value(struct ref_array_item *ref, int atom,
         struct atom_value **v, struct strbuf *err)
{
 if (!ref->value) {
  if (populate_value(ref, err))
   return -1;
  fill_missing_values(ref->value);
 }
 *v = &ref->value[atom];
 return 0;
}
