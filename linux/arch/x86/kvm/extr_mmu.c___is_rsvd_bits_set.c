
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rsvd_bits_validate {int** rsvd_bits_mask; unsigned long long bad_mt_xwr; } ;



__attribute__((used)) static bool
__is_rsvd_bits_set(struct rsvd_bits_validate *rsvd_check, u64 pte, int level)
{
 int bit7 = (pte >> 7) & 1, low6 = pte & 0x3f;

 return (pte & rsvd_check->rsvd_bits_mask[bit7][level-1]) |
  ((rsvd_check->bad_mt_xwr & (1ull << low6)) != 0);
}
