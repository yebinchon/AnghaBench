
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int H_FREE_VTERM ;
 int hvcs_convert (long) ;
 long plpar_hcall_norets (int ,int ) ;

int hvcs_free_connection(uint32_t unit_address)
{
 long retval;
 retval = plpar_hcall_norets(H_FREE_VTERM, unit_address);
 return hvcs_convert(retval);
}
