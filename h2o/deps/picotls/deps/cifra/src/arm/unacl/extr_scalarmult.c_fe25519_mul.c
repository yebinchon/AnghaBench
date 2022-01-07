
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fe25519 ;
typedef int UN_512bitValue ;


 int fe25519_reduceTo256Bits_asm (int *,int *) ;
 int multiply256x256 (int *,int const*,int const*) ;

__attribute__((used)) static void
fe25519_mul(
    fe25519* result,
    const fe25519* in1,
    const fe25519* in2
)
{
    UN_512bitValue tmp;

    multiply256x256(&tmp, in1, in2);
    fe25519_reduceTo256Bits_asm(result,&tmp);
}
