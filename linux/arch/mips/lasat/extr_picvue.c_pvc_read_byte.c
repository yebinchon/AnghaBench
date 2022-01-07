
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int data_mask; int data_shift; int e; } ;


 int ndelay (int) ;
 TYPE_1__* picvue ;
 int pvc_reg_read () ;
 int pvc_reg_write (int ) ;

__attribute__((used)) static u8 pvc_read_byte(u32 data)
{
 u8 byte;

 data |= picvue->e;
 pvc_reg_write(data);
 ndelay(220);
 byte = (pvc_reg_read() & picvue->data_mask) >> picvue->data_shift;
 data &= ~picvue->e;
 pvc_reg_write(data);
 ndelay(220);
 return byte;
}
