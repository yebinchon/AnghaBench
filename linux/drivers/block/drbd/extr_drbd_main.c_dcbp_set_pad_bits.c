
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p_compressed_bm {int encoding; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void dcbp_set_pad_bits(struct p_compressed_bm *p, int n)
{
 BUG_ON(n & ~0x7);
 p->encoding = (p->encoding & (~0x7 << 4)) | (n << 4);
}
