
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const limb ;


 int fmul (int const*,int const*,int const*) ;
 int fsquare (int const*,int const*) ;

__attribute__((used)) static void
crecip(limb *out, const limb *z) {
  limb z2[10];
  limb z9[10];
  limb z11[10];
  limb z2_5_0[10];
  limb z2_10_0[10];
  limb z2_20_0[10];
  limb z2_50_0[10];
  limb z2_100_0[10];
  limb t0[10];
  limb t1[10];
  int i;

          fsquare(z2,z);
          fsquare(t1,z2);
          fsquare(t0,t1);
          fmul(z9,t0,z);
           fmul(z11,z9,z2);
           fsquare(t0,z11);
                       fmul(z2_5_0,t0,z9);

                  fsquare(t0,z2_5_0);
                  fsquare(t1,t0);
                  fsquare(t0,t1);
                  fsquare(t1,t0);
                   fsquare(t0,t1);
                   fmul(z2_10_0,t0,z2_5_0);

                   fsquare(t0,z2_10_0);
                   fsquare(t1,t0);
                    for (i = 2;i < 10;i += 2) { fsquare(t0,t1); fsquare(t1,t0); }
                   fmul(z2_20_0,t1,z2_10_0);

                   fsquare(t0,z2_20_0);
                   fsquare(t1,t0);
                    for (i = 2;i < 20;i += 2) { fsquare(t0,t1); fsquare(t1,t0); }
                   fmul(t0,t1,z2_20_0);

                   fsquare(t1,t0);
                   fsquare(t0,t1);
                    for (i = 2;i < 10;i += 2) { fsquare(t1,t0); fsquare(t0,t1); }
                   fmul(z2_50_0,t0,z2_10_0);

                   fsquare(t0,z2_50_0);
                   fsquare(t1,t0);
                     for (i = 2;i < 50;i += 2) { fsquare(t0,t1); fsquare(t1,t0); }
                    fmul(z2_100_0,t1,z2_50_0);

                    fsquare(t1,z2_100_0);
                    fsquare(t0,t1);
                      for (i = 2;i < 100;i += 2) { fsquare(t1,t0); fsquare(t0,t1); }
                    fmul(t1,t0,z2_100_0);

                    fsquare(t0,t1);
                    fsquare(t1,t0);
                     for (i = 2;i < 50;i += 2) { fsquare(t0,t1); fsquare(t1,t0); }
                    fmul(t0,t1,z2_50_0);

                    fsquare(t1,t0);
                    fsquare(t0,t1);
                    fsquare(t1,t0);
                    fsquare(t0,t1);
                    fsquare(t1,t0);
                   fmul(out,t1,z11);
}
