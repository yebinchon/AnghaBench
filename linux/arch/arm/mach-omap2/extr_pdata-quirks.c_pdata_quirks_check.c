
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdata_init {int (* fn ) () ;scalar_t__ compatible; } ;


 scalar_t__ of_machine_is_compatible (scalar_t__) ;
 int stub1 () ;

__attribute__((used)) static void pdata_quirks_check(struct pdata_init *quirks)
{
 while (quirks->compatible) {
  if (of_machine_is_compatible(quirks->compatible)) {
   if (quirks->fn)
    quirks->fn();
  }
  quirks++;
 }
}
