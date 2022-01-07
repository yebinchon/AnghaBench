
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int (* read_pic ) (int ) ;int (* write_pic ) (int ,int) ;} ;


 int PIC_UPPER_INDEX ;
 TYPE_1__* pcr_ops ;
 int stub1 (int ) ;
 int stub2 (int ,int) ;

__attribute__((used)) static void sparc_default_write_pmc(int idx, u64 val)
{
 u64 shift, mask, pic;

 shift = 0;
 if (idx == PIC_UPPER_INDEX)
  shift = 32;

 mask = ((u64) 0xffffffff) << shift;
 val <<= shift;

 pic = pcr_ops->read_pic(0);
 pic &= ~mask;
 pic |= val;
 pcr_ops->write_pic(0, pic);
}
