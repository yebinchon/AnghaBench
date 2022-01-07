
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fe25519 ;


 int fe25519_cneg (int ,int const,int ) ;
 int fe25519_isnegative (int const) ;

__attribute__((used)) static inline void
fe25519_abs(fe25519 h, const fe25519 f)
{
    fe25519_cneg(h, f, fe25519_isnegative(f));
}
