
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int __be32 ;


 unsigned int be32_to_cpu (int ) ;
 unsigned int kvmppc_get_xics_latch () ;
 scalar_t__ opal_int_get_xirr (int *,int) ;

__attribute__((used)) static unsigned int icp_opal_get_xirr(void)
{
 unsigned int kvm_xirr;
 __be32 hw_xirr;
 int64_t rc;


 kvm_xirr = kvmppc_get_xics_latch();
 if (kvm_xirr)
  return kvm_xirr;


 rc = opal_int_get_xirr(&hw_xirr, 0);
 if (rc < 0)
  return 0;
 return be32_to_cpu(hw_xirr);
}
