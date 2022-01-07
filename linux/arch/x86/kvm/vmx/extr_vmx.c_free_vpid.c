
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_bit (int,int ) ;
 int enable_vpid ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmx_vpid_bitmap ;
 int vmx_vpid_lock ;

void free_vpid(int vpid)
{
 if (!enable_vpid || vpid == 0)
  return;
 spin_lock(&vmx_vpid_lock);
 __clear_bit(vpid, vmx_vpid_bitmap);
 spin_unlock(&vmx_vpid_lock);
}
