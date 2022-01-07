
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int panic (char*) ;

phys_addr_t mips_cpc_default_phys_base(void)
{
 panic("Cannot detect cpc address");
}
