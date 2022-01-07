
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int cmp_long_insn(const void *a, const void *b)
{
 return strcmp(((struct insn *)a)->name, ((struct insn *)b)->name);
}
