
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VMX_NR_VPIDS ;
 int __set_bit (int,int ) ;
 int enable_vpid ;
 int find_first_zero_bit (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmx_vpid_bitmap ;
 int vmx_vpid_lock ;

int allocate_vpid(void)
{
 int vpid;

 if (!enable_vpid)
  return 0;
 spin_lock(&vmx_vpid_lock);
 vpid = find_first_zero_bit(vmx_vpid_bitmap, VMX_NR_VPIDS);
 if (vpid < VMX_NR_VPIDS)
  __set_bit(vpid, vmx_vpid_bitmap);
 else
  vpid = 0;
 spin_unlock(&vmx_vpid_lock);
 return vpid;
}
