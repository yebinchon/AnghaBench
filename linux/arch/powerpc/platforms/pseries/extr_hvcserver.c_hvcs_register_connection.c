
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int H_REGISTER_VTERM ;
 int hvcs_convert (long) ;
 long plpar_hcall_norets (int ,int ,int ,int ) ;

int hvcs_register_connection( uint32_t unit_address,
  uint32_t p_partition_ID, uint32_t p_unit_address)
{
 long retval;
 retval = plpar_hcall_norets(H_REGISTER_VTERM, unit_address,
    p_partition_ID, p_unit_address);
 return hvcs_convert(retval);
}
