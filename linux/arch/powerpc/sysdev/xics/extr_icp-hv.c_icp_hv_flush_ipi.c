
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XICS_IPI ;
 int icp_hv_set_xirr (int) ;

__attribute__((used)) static void icp_hv_flush_ipi(void)
{
 icp_hv_set_xirr((0x00 << 24) | XICS_IPI);
}
