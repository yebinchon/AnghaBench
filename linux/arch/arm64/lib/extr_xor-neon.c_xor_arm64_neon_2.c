
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64x2_t ;
typedef int uint64_t ;


 int veorq_u64 (int ,int ) ;
 int vld1q_u64 (int *) ;
 int vst1q_u64 (int *,int ) ;

void xor_arm64_neon_2(unsigned long bytes, unsigned long *p1,
 unsigned long *p2)
{
 uint64_t *dp1 = (uint64_t *)p1;
 uint64_t *dp2 = (uint64_t *)p2;

 register uint64x2_t v0, v1, v2, v3;
 long lines = bytes / (sizeof(uint64x2_t) * 4);

 do {

  v0 = veorq_u64(vld1q_u64(dp1 + 0), vld1q_u64(dp2 + 0));
  v1 = veorq_u64(vld1q_u64(dp1 + 2), vld1q_u64(dp2 + 2));
  v2 = veorq_u64(vld1q_u64(dp1 + 4), vld1q_u64(dp2 + 4));
  v3 = veorq_u64(vld1q_u64(dp1 + 6), vld1q_u64(dp2 + 6));


  vst1q_u64(dp1 + 0, v0);
  vst1q_u64(dp1 + 2, v1);
  vst1q_u64(dp1 + 4, v2);
  vst1q_u64(dp1 + 6, v3);

  dp1 += 8;
  dp2 += 8;
 } while (--lines > 0);
}
