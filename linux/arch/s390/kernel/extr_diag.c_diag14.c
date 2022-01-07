
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* diag14 ) (unsigned long,unsigned long,unsigned long) ;} ;


 int DIAG_STAT_X014 ;
 TYPE_1__ diag_dma_ops ;
 int diag_stat_inc (int ) ;
 int stub1 (unsigned long,unsigned long,unsigned long) ;

int diag14(unsigned long rx, unsigned long ry1, unsigned long subcode)
{
 diag_stat_inc(DIAG_STAT_X014);
 return diag_dma_ops.diag14(rx, ry1, subcode);
}
