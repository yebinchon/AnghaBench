
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 size_t VECTOR_BREAKPOINT ;
 size_t VMX_ALIGN ;
 unsigned long VMX_ALIGN_MASK ;
 int __crct10dif_vpmsum (int,unsigned char const*,size_t) ;
 int crc_t10dif_generic (int,unsigned char const*,unsigned int) ;
 int crypto_simd_usable () ;
 int disable_kernel_altivec () ;
 int enable_kernel_altivec () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static u16 crct10dif_vpmsum(u16 crci, unsigned char const *p, size_t len)
{
 unsigned int prealign;
 unsigned int tail;
 u32 crc = crci;

 if (len < (VECTOR_BREAKPOINT + VMX_ALIGN) || !crypto_simd_usable())
  return crc_t10dif_generic(crc, p, len);

 if ((unsigned long)p & VMX_ALIGN_MASK) {
  prealign = VMX_ALIGN - ((unsigned long)p & VMX_ALIGN_MASK);
  crc = crc_t10dif_generic(crc, p, prealign);
  len -= prealign;
  p += prealign;
 }

 if (len & ~VMX_ALIGN_MASK) {
  crc <<= 16;
  preempt_disable();
  pagefault_disable();
  enable_kernel_altivec();
  crc = __crct10dif_vpmsum(crc, p, len & ~VMX_ALIGN_MASK);
  disable_kernel_altivec();
  pagefault_enable();
  preempt_enable();
  crc >>= 16;
 }

 tail = len & VMX_ALIGN_MASK;
 if (tail) {
  p += len & ~VMX_ALIGN_MASK;
  crc = crc_t10dif_generic(crc, p, tail);
 }

 return crc & 0xffff;
}
