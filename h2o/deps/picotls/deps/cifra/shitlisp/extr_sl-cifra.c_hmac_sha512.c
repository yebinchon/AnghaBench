
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sl_value ;
typedef int sl_symboltab ;


 int cf_sha512 ;
 int * hmac_fn (int *,int *,int *,int *) ;

__attribute__((used)) static sl_value * hmac_sha512(sl_value *self, sl_value *args, sl_symboltab *tab)
{ return hmac_fn(self, args, tab, &cf_sha512); }
