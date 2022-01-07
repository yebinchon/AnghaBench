
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const fe25519 ;


 int fe25519_mul (int const,int const,int const) ;
 int fe25519_sq (int const,int const) ;

__attribute__((used)) static void
chi25519(fe25519 out, const fe25519 z)
{
    fe25519 t0, t1, t2, t3;
    int i;

    fe25519_sq(t0, z);
    fe25519_mul(t1, t0, z);
    fe25519_sq(t0, t1);
    fe25519_sq(t2, t0);
    fe25519_sq(t2, t2);
    fe25519_mul(t2, t2, t0);
    fe25519_mul(t1, t2, z);
    fe25519_sq(t2, t1);

    for (i = 1; i < 5; i++) {
        fe25519_sq(t2, t2);
    }
    fe25519_mul(t1, t2, t1);
    fe25519_sq(t2, t1);
    for (i = 1; i < 10; i++) {
        fe25519_sq(t2, t2);
    }
    fe25519_mul(t2, t2, t1);
    fe25519_sq(t3, t2);
    for (i = 1; i < 20; i++) {
        fe25519_sq(t3, t3);
    }
    fe25519_mul(t2, t3, t2);
    fe25519_sq(t2, t2);
    for (i = 1; i < 10; i++) {
        fe25519_sq(t2, t2);
    }
    fe25519_mul(t1, t2, t1);
    fe25519_sq(t2, t1);
    for (i = 1; i < 50; i++) {
        fe25519_sq(t2, t2);
    }
    fe25519_mul(t2, t2, t1);
    fe25519_sq(t3, t2);
    for (i = 1; i < 100; i++) {
        fe25519_sq(t3, t3);
    }
    fe25519_mul(t2, t3, t2);
    fe25519_sq(t2, t2);
    for (i = 1; i < 50; i++) {
        fe25519_sq(t2, t2);
    }
    fe25519_mul(t1, t2, t1);
    fe25519_sq(t1, t1);
    for (i = 1; i < 4; i++) {
        fe25519_sq(t1, t1);
    }
    fe25519_mul(out, t1, t0);
}
