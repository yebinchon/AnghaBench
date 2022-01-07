
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mult (unsigned int*,unsigned int*,unsigned int const*) ;
 int square (unsigned int*,unsigned int const*) ;

__attribute__((used)) static void recip(unsigned int out[32],const unsigned int z[32])
{
  unsigned int z2[32];
  unsigned int z9[32];
  unsigned int z11[32];
  unsigned int z2_5_0[32];
  unsigned int z2_10_0[32];
  unsigned int z2_20_0[32];
  unsigned int z2_50_0[32];
  unsigned int z2_100_0[32];
  unsigned int t0[32];
  unsigned int t1[32];
  int i;

          square(z2,z);
          square(t1,z2);
          square(t0,t1);
          mult(z9,t0,z);
           mult(z11,z9,z2);
           square(t0,z11);
                       mult(z2_5_0,t0,z9);

                  square(t0,z2_5_0);
                  square(t1,t0);
                  square(t0,t1);
                  square(t1,t0);
                   square(t0,t1);
                   mult(z2_10_0,t0,z2_5_0);

                   square(t0,z2_10_0);
                   square(t1,t0);
                    for (i = 2;i < 10;i += 2) { square(t0,t1); square(t1,t0); }
                   mult(z2_20_0,t1,z2_10_0);

                   square(t0,z2_20_0);
                   square(t1,t0);
                    for (i = 2;i < 20;i += 2) { square(t0,t1); square(t1,t0); }
                   mult(t0,t1,z2_20_0);

                   square(t1,t0);
                   square(t0,t1);
                    for (i = 2;i < 10;i += 2) { square(t1,t0); square(t0,t1); }
                   mult(z2_50_0,t0,z2_10_0);

                   square(t0,z2_50_0);
                   square(t1,t0);
                     for (i = 2;i < 50;i += 2) { square(t0,t1); square(t1,t0); }
                    mult(z2_100_0,t1,z2_50_0);

                    square(t1,z2_100_0);
                    square(t0,t1);
                      for (i = 2;i < 100;i += 2) { square(t1,t0); square(t0,t1); }
                    mult(t1,t0,z2_100_0);

                    square(t0,t1);
                    square(t1,t0);
                     for (i = 2;i < 50;i += 2) { square(t0,t1); square(t1,t0); }
                    mult(t0,t1,z2_50_0);

                    square(t1,t0);
                    square(t0,t1);
                    square(t1,t0);
                    square(t0,t1);
                    square(t1,t0);
                   mult(out,t1,z11);
}
