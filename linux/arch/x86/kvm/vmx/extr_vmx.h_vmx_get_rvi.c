
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GUEST_INTR_STATUS ;
 int vmcs_read16 (int ) ;

__attribute__((used)) static inline u8 vmx_get_rvi(void)
{
 return vmcs_read16(GUEST_INTR_STATUS) & 0xff;
}
