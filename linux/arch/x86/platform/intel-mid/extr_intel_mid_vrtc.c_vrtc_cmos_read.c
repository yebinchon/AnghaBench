
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char __raw_readb (scalar_t__) ;
 int lock_cmos_prefix (unsigned char) ;
 int lock_cmos_suffix (unsigned char) ;
 scalar_t__ vrtc_virt_base ;

unsigned char vrtc_cmos_read(unsigned char reg)
{
 unsigned char retval;


 if (reg > 0xd || !vrtc_virt_base)
  return 0xff;

 lock_cmos_prefix(reg);
 retval = __raw_readb(vrtc_virt_base + (reg << 2));
 lock_cmos_suffix(reg);
 return retval;
}
