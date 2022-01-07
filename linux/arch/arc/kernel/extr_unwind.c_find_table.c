
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long pc; unsigned long range; } ;
struct TYPE_4__ {unsigned long pc; unsigned long range; } ;
struct unwind_table {TYPE_1__ init; TYPE_2__ core; struct unwind_table* link; } ;


 struct unwind_table root_table ;

__attribute__((used)) static struct unwind_table *find_table(unsigned long pc)
{
 struct unwind_table *table;

 for (table = &root_table; table; table = table->link)
  if ((pc >= table->core.pc
       && pc < table->core.pc + table->core.range)
      || (pc >= table->init.pc
   && pc < table->init.pc + table->init.range))
   break;

 return table;
}
