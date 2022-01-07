
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int GUEST_INTR_STATUS ;
 int vmcs_read16 (int ) ;
 int vmcs_write16 (int ,int) ;

__attribute__((used)) static void vmx_set_rvi(int vector)
{
 u16 status;
 u8 old;

 if (vector == -1)
  vector = 0;

 status = vmcs_read16(GUEST_INTR_STATUS);
 old = (u8)status & 0xff;
 if ((u8)vector != old) {
  status &= ~0xff;
  status |= (u8)vector;
  vmcs_write16(GUEST_INTR_STATUS, status);
 }
}
