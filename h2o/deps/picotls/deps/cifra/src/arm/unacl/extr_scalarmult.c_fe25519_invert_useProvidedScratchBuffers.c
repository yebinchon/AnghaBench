
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int const fe25519 ;


 int fe25519_mul (int const*,int const*,int const*) ;
 int fe25519_square (int const*,int const*) ;

__attribute__((used)) static void
fe25519_invert_useProvidedScratchBuffers(
    fe25519* r,
    const fe25519* x,
    fe25519* t0,
    fe25519* t1,
    fe25519* t2
)
{
    fe25519 *z11 = r;
    fe25519 *z2_10_0 = t1;
    fe25519 *z2_50_0 = t2;
    fe25519 *z2_100_0 = z2_10_0;

    uint8 i;

    {
         fe25519 *z2 = z2_50_0;

                fe25519_square(z2, x);
                fe25519_square(t0, z2);
                fe25519_square(t0, t0);
                fe25519_mul(z2_10_0, t0, x);
                 fe25519_mul(z11, z2_10_0, z2);


    }

             fe25519_square(t0, z11);
                         fe25519_mul(z2_10_0, t0, z2_10_0);

                    fe25519_square(t0, z2_10_0);
                    fe25519_square(t0, t0);
                    fe25519_square(t0, t0);
                    fe25519_square(t0, t0);
                     fe25519_square(t0, t0);
                     fe25519_mul(z2_10_0, t0, z2_10_0);

                     fe25519_square(t0, z2_10_0);

                      for (i = 1; i < 10; i ++)
    {
        fe25519_square(t0, t0);
    }
                     fe25519_mul(z2_50_0, t0, z2_10_0);

                     fe25519_square(t0, z2_50_0);

                      for (i = 1; i < 20; i ++)
    {
        fe25519_square(t0, t0);
    }
                     fe25519_mul(t0, t0, z2_50_0);

                     fe25519_square(t0, t0);

                      for (i = 1; i < 10; i ++)
    {
        fe25519_square(t0, t0);
    }
                     fe25519_mul(z2_50_0, t0, z2_10_0);

                     fe25519_square(t0, z2_50_0);

                       for (i = 1; i < 50; i ++)
    {
        fe25519_square(t0, t0);
    }
                      fe25519_mul(z2_100_0, t0, z2_50_0);

                      fe25519_square(t0, z2_100_0);

                        for (i = 1; i < 100; i ++)
    {
        fe25519_square(t0, t0);
    }
                      fe25519_mul(t0, t0, z2_100_0);

                       for (i = 0; i < 50; i ++)
    {
        fe25519_square(t0, t0);
    }
                      fe25519_mul(t0, t0, z2_50_0);

                      for (i = 0; i < 5; i ++)
    {
         fe25519_square(t0, t0);
    }
                     fe25519_mul(r, t0, z11);
}
