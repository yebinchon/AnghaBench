
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_kpp (int *) ;
 int dh ;

__attribute__((used)) static void dh_exit(void)
{
 crypto_unregister_kpp(&dh);
}
