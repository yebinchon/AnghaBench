
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int e; int data_mask; int data_shift; } ;


 int ndelay (int) ;
 TYPE_1__* picvue ;
 int pvc_reg_write (int) ;

__attribute__((used)) static void pvc_write_byte(u32 data, u8 byte)
{
 data |= picvue->e;
 pvc_reg_write(data);
 data &= ~picvue->data_mask;
 data |= byte << picvue->data_shift;
 pvc_reg_write(data);
 ndelay(220);
 pvc_reg_write(data & ~picvue->e);
 ndelay(220);
}
