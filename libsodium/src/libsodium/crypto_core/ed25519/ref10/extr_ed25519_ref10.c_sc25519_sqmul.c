
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sc25519_mul (unsigned char*,unsigned char*,unsigned char const*) ;
 int sc25519_sq (unsigned char*,unsigned char*) ;

__attribute__((used)) static inline void
sc25519_sqmul(unsigned char s[32], const int n, const unsigned char a[32])
{
    int i;

    for (i = 0; i < n; i++) {
        sc25519_sq(s, s);
    }
    sc25519_mul(s, s, a);
}
