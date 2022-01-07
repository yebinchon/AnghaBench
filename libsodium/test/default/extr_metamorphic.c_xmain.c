
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mm_generichash () ;
 int mm_hmacsha256 () ;
 int mm_hmacsha512 () ;
 int mm_onetimeauth () ;
 int printf (char*) ;

int
main(void)
{
    mm_generichash();
    mm_onetimeauth();
    mm_hmacsha256();
    mm_hmacsha512();

    printf("OK\n");

    return 0;
}
