
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_multiple ) (TYPE_1__*,unsigned long*,unsigned long*) ;} ;


 TYPE_1__* assabet_bcr_gc ;
 int stub1 (TYPE_1__*,unsigned long*,unsigned long*) ;

void ASSABET_BCR_frob(unsigned int mask, unsigned int val)
{
 unsigned long m = mask, v = val;

 assabet_bcr_gc->set_multiple(assabet_bcr_gc, &m, &v);
}
