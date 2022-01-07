
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int powernv_hwrng_present () ;

int kvmppc_hwrng_present(void)
{
 return powernv_hwrng_present();
}
