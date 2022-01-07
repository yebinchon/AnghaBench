
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fe25519 ;
typedef int UN_512bitValue ;


 int fe25519_reduceTo256Bits_asm (int *,int *) ;
 int square256 (int *,int const*) ;

__attribute__((used)) static void
fe25519_square(
    fe25519* result,
    const fe25519* in
)
{
    UN_512bitValue tmp;

    square256(&tmp, in);
    fe25519_reduceTo256Bits_asm(result,&tmp);
}
