
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u64 ;
typedef scalar_t__ __s64 ;



__attribute__((used)) static void misaligned_kernel_word_load(__u64 address, int do_sign_extend, __u64 *result)
{
 unsigned short x;
 unsigned char *p, *q;
 p = (unsigned char *) (int) address;
 q = (unsigned char *) &x;
 q[0] = p[0];
 q[1] = p[1];

 if (do_sign_extend) {
  *result = (__u64)(__s64) *(short *) &x;
 } else {
  *result = (__u64) x;
 }
}
