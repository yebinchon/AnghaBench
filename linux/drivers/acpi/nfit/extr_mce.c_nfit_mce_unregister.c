
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mce_unregister_decode_chain (int *) ;
 int nfit_mce_dec ;

void nfit_mce_unregister(void)
{
 mce_unregister_decode_chain(&nfit_mce_dec);
}
