
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_register_kpp (int *) ;
 int ecdh ;

__attribute__((used)) static int ecdh_init(void)
{
 return crypto_register_kpp(&ecdh);
}
