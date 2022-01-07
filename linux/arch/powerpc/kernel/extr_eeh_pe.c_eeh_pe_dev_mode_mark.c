
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int dummy; } ;


 int __eeh_pe_dev_mode_mark ;
 int eeh_pe_dev_traverse (struct eeh_pe*,int ,int*) ;

void eeh_pe_dev_mode_mark(struct eeh_pe *pe, int mode)
{
 eeh_pe_dev_traverse(pe, __eeh_pe_dev_mode_mark, &mode);
}
