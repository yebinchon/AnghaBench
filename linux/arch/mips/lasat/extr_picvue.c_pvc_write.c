
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int rs; int rw; } ;


 int MODE_DATA ;
 int ndelay (int) ;
 TYPE_1__* picvue ;
 int pvc_reg_read () ;
 int pvc_reg_write (int ) ;
 int pvc_wait () ;
 int pvc_write_byte (int ,int ) ;

__attribute__((used)) static void pvc_write(u8 byte, int mode)
{
 u32 data = pvc_reg_read();
 data &= ~picvue->rw;
 if (mode == MODE_DATA)
  data |= picvue->rs;
 else
  data &= ~picvue->rs;
 pvc_reg_write(data);
 ndelay(40);
 pvc_write_byte(data, byte);
 if (mode == MODE_DATA)
  data &= ~picvue->rs;
 else
  data |= picvue->rs;
 pvc_reg_write(data);
 pvc_wait();
}
