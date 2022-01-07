
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t VECTOR_BREAKPOINT ;
 size_t VMX_ALIGN ;
 unsigned long VMX_ALIGN_MASK ;
 int __crc32c_le (int ,unsigned char const*,unsigned int) ;
 int __crc32c_vpmsum (int ,unsigned char const*,size_t) ;
 int crypto_simd_usable () ;
 int disable_kernel_altivec () ;
 int enable_kernel_altivec () ;
 int pagefault_disable () ;
 int pagefault_enable () ;
 int preempt_disable () ;
 int preempt_enable () ;

__attribute__((used)) static u32 crc32c_vpmsum(u32 crc, unsigned char const *p, size_t len)
{
 unsigned int prealign;
 unsigned int tail;

 if (len < (VECTOR_BREAKPOINT + VMX_ALIGN) || !crypto_simd_usable())
  return __crc32c_le(crc, p, len);

 if ((unsigned long)p & VMX_ALIGN_MASK) {
  prealign = VMX_ALIGN - ((unsigned long)p & VMX_ALIGN_MASK);
  crc = __crc32c_le(crc, p, prealign);
  len -= prealign;
  p += prealign;
 }

 if (len & ~VMX_ALIGN_MASK) {
  preempt_disable();
  pagefault_disable();
  enable_kernel_altivec();
  crc = __crc32c_vpmsum(crc, p, len & ~VMX_ALIGN_MASK);
  disable_kernel_altivec();
  pagefault_enable();
  preempt_enable();
 }

 tail = len & VMX_ALIGN_MASK;
 if (tail) {
  p += len & ~VMX_ALIGN_MASK;
  crc = __crc32c_le(crc, p, tail);
 }

 return crc;
}
