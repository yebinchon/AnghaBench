
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int a ;
 int c ;
 int crypto_onetimeauth_verify (int ,int ,int,int ) ;
 int printf (char*,int) ;
 int rs ;

int
main(void)
{
    printf("%d\n", crypto_onetimeauth_verify(a, c, 131, rs));
    return 0;
}
