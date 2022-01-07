
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IFX_MEI_WRITE_REGISTER_L (int ,int ) ;
 int wmb () ;

__attribute__((used)) static void
IFX_MEI_LongWordWrite (u32 ul_address, u32 ul_data)
{
 IFX_MEI_WRITE_REGISTER_L (ul_data, ul_address);
 wmb();
 return;
}
