
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FLS (int) ;
 int ROUNDS (int) ;
 int SUBKEY_L (unsigned int) ;
 int SUBKEY_R (unsigned int) ;

__attribute__((used)) static void camellia_do_encrypt(const u32 *subkey, u32 *io, unsigned max)
{
 u32 il, ir, t0, t1;


 io[0] ^= SUBKEY_L(0);
 io[1] ^= SUBKEY_R(0);
 ({ CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(0 + 2), SUBKEY_R(0 + 2), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(0 + 3), SUBKEY_R(0 + 3), io[0], io[1], il, ir); CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(0 + 4), SUBKEY_R(0 + 4), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(0 + 5), SUBKEY_R(0 + 5), io[0], io[1], il, ir); CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(0 + 6), SUBKEY_R(0 + 6), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(0 + 7), SUBKEY_R(0 + 7), io[0], io[1], il, ir); });
 ({ CAMELLIA_FLS(io[0], io[1], io[2], io[3], SUBKEY_L(8 + 0), SUBKEY_R(8 + 0), SUBKEY_L(8 + 1), SUBKEY_R(8 + 1), t0, t1, il, ir); });
 ({ CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(8 + 2), SUBKEY_R(8 + 2), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(8 + 3), SUBKEY_R(8 + 3), io[0], io[1], il, ir); CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(8 + 4), SUBKEY_R(8 + 4), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(8 + 5), SUBKEY_R(8 + 5), io[0], io[1], il, ir); CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(8 + 6), SUBKEY_R(8 + 6), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(8 + 7), SUBKEY_R(8 + 7), io[0], io[1], il, ir); });
 ({ CAMELLIA_FLS(io[0], io[1], io[2], io[3], SUBKEY_L(16 + 0), SUBKEY_R(16 + 0), SUBKEY_L(16 + 1), SUBKEY_R(16 + 1), t0, t1, il, ir); });
 ({ CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(16 + 2), SUBKEY_R(16 + 2), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(16 + 3), SUBKEY_R(16 + 3), io[0], io[1], il, ir); CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(16 + 4), SUBKEY_R(16 + 4), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(16 + 5), SUBKEY_R(16 + 5), io[0], io[1], il, ir); CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(16 + 6), SUBKEY_R(16 + 6), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(16 + 7), SUBKEY_R(16 + 7), io[0], io[1], il, ir); });
 if (max == 32) {
  ({ CAMELLIA_FLS(io[0], io[1], io[2], io[3], SUBKEY_L(24 + 0), SUBKEY_R(24 + 0), SUBKEY_L(24 + 1), SUBKEY_R(24 + 1), t0, t1, il, ir); });
  ({ CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(24 + 2), SUBKEY_R(24 + 2), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(24 + 3), SUBKEY_R(24 + 3), io[0], io[1], il, ir); CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(24 + 4), SUBKEY_R(24 + 4), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(24 + 5), SUBKEY_R(24 + 5), io[0], io[1], il, ir); CAMELLIA_ROUNDSM(io[0], io[1], SUBKEY_L(24 + 6), SUBKEY_R(24 + 6), io[2], io[3], il, ir); CAMELLIA_ROUNDSM(io[2], io[3], SUBKEY_L(24 + 7), SUBKEY_R(24 + 7), io[0], io[1], il, ir); });
 }





 io[2] ^= SUBKEY_L(max);
 io[3] ^= SUBKEY_R(max);

}
