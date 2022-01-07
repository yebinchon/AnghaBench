
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * saved_registers; } ;


 TYPE_1__* ioapics ;
 int kfree (int *) ;

__attribute__((used)) static void free_ioapic_saved_registers(int idx)
{
 kfree(ioapics[idx].saved_registers);
 ioapics[idx].saved_registers = ((void*)0);
}
