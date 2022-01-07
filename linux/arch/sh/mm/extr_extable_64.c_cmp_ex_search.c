
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {unsigned long insn; } ;



__attribute__((used)) static int cmp_ex_search(const void *key, const void *elt)
{
 const struct exception_table_entry *_elt = elt;
 unsigned long _key = *(unsigned long *)key;


 if (_key > _elt->insn)
  return 1;
 if (_key < _elt->insn)
  return -1;
 return 0;
}
