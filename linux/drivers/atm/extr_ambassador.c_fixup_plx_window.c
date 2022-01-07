
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef int loader_block ;
typedef int amb_dev ;


 int amb_mem ;
 int offsetof (int ,int ) ;
 unsigned long onegigmask ;
 unsigned long rd_plain (int *,int ) ;
 int * stuff ;
 unsigned long virt_to_bus (int *) ;
 int wr_plain (int *,int ,unsigned long) ;

__attribute__((used)) static void fixup_plx_window (amb_dev *dev, loader_block *lb)
{

 unsigned long blb;
 u32 mapreg;
 blb = virt_to_bus(lb);

 mapreg = rd_plain (dev, offsetof(amb_mem, stuff[10]));
 mapreg &= ~onegigmask;
 mapreg |= blb & onegigmask;
 wr_plain (dev, offsetof(amb_mem, stuff[10]), mapreg);
 return;
}
