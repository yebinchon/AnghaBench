
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int m ;


 int POLY1305_BLOCK_SIZE ;
 int memset (int *,int ,int) ;
 int poly1305_block_sse2 (int*,int *,int const*,int) ;

__attribute__((used)) static void poly1305_simd_mult(u32 *a, const u32 *b)
{
 u8 m[POLY1305_BLOCK_SIZE];

 memset(m, 0, sizeof(m));


 a[4] -= 1 << 24;
 poly1305_block_sse2(a, m, b, 1);
}
