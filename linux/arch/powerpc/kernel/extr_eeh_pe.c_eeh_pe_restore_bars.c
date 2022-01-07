
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int dummy; } ;


 int eeh_pe_dev_traverse (struct eeh_pe*,int ,int *) ;
 int eeh_restore_one_device_bars ;

void eeh_pe_restore_bars(struct eeh_pe *pe)
{




 eeh_pe_dev_traverse(pe, eeh_restore_one_device_bars, ((void*)0));
}
