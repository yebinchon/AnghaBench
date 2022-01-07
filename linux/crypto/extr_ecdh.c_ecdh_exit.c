
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_kpp (int *) ;
 int ecdh ;

__attribute__((used)) static void ecdh_exit(void)
{
 crypto_unregister_kpp(&ecdh);
}
