
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_unaligned_be32 (int const*) ;
 int put_unaligned_be32 (int,int*) ;
 int sm4_round (int*,int const) ;

__attribute__((used)) static void sm4_do_crypt(const u32 *rk, u32 *out, const u32 *in)
{
 u32 x[4], i, t;

 for (i = 0; i < 4; ++i)
  x[i] = get_unaligned_be32(&in[i]);

 for (i = 0; i < 32; ++i) {
  t = sm4_round(x, rk[i]);
  x[0] = x[1];
  x[1] = x[2];
  x[2] = x[3];
  x[3] = t;
 }

 for (i = 0; i < 4; ++i)
  put_unaligned_be32(x[3 - i], &out[i]);
}
