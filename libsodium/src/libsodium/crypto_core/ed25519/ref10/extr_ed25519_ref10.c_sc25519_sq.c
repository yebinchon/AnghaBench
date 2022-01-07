
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sc25519_mul (unsigned char*,unsigned char const*,unsigned char const*) ;

__attribute__((used)) static inline void
sc25519_sq(unsigned char *s, const unsigned char *a)
{
    sc25519_mul(s, a, a);
}
