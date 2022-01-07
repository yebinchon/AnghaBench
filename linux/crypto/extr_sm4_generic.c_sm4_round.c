
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;


 int const sm4_enc_sub (int const) ;

__attribute__((used)) static u32 sm4_round(const u32 *x, const u32 rk)
{
 return x[0] ^ sm4_enc_sub(x[1] ^ x[2] ^ x[3] ^ rk);
}
