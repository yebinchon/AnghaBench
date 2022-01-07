
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int const GETU32 (int const*) ;
 int PUTU32 (int *,int) ;
 int ROUND (int,int ,int ) ;
 int const TD41 (int) ;
 int const TD42 (int) ;
 int const TD43 (int) ;
 int const TD44 (int) ;
 int s ;
 int t ;

__attribute__((used)) static void rijndaelDecrypt(const u32 rk[ ], const u8 ct[16], u8 pt[16])
{
 u32 s0, s1, s2, s3, t0, t1, t2, t3;
 const int Nr = 10;

 int r;






 s0 = GETU32(ct ) ^ rk[0];
 s1 = GETU32(ct + 4) ^ rk[1];
 s2 = GETU32(ct + 8) ^ rk[2];
 s3 = GETU32(ct + 12) ^ rk[3];
 r = Nr >> 1;
 for (;;) {
  t0 = TD0(s0) ^ TD1(s3) ^ TD2(s2) ^ TD3(s1) ^ rk[4 * 1]; t1 = TD0(s1) ^ TD1(s0) ^ TD2(s3) ^ TD3(s2) ^ rk[4 * 1 + 1]; t2 = TD0(s2) ^ TD1(s1) ^ TD2(s0) ^ TD3(s3) ^ rk[4 * 1 + 2]; t3 = TD0(s3) ^ TD1(s2) ^ TD2(s1) ^ TD3(s0) ^ rk[4 * 1 + 3];
  rk += 8;
  if (--r == 0)
   break;
  s0 = TD0(t0) ^ TD1(t3) ^ TD2(t2) ^ TD3(t1) ^ rk[4 * 0]; s1 = TD0(t1) ^ TD1(t0) ^ TD2(t3) ^ TD3(t2) ^ rk[4 * 0 + 1]; s2 = TD0(t2) ^ TD1(t1) ^ TD2(t0) ^ TD3(t3) ^ rk[4 * 0 + 2]; s3 = TD0(t3) ^ TD1(t2) ^ TD2(t1) ^ TD3(t0) ^ rk[4 * 0 + 3];
 }
 s0 = TD41(t0) ^ TD42(t3) ^ TD43(t2) ^ TD44(t1) ^ rk[0];
 PUTU32(pt , s0);
 s1 = TD41(t1) ^ TD42(t0) ^ TD43(t3) ^ TD44(t2) ^ rk[1];
 PUTU32(pt + 4, s1);
 s2 = TD41(t2) ^ TD42(t1) ^ TD43(t0) ^ TD44(t3) ^ rk[2];
 PUTU32(pt + 8, s2);
 s3 = TD41(t3) ^ TD42(t2) ^ TD43(t1) ^ TD44(t0) ^ rk[3];
 PUTU32(pt + 12, s3);
}
