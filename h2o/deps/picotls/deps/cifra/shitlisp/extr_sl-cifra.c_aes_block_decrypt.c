
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sl_value ;
typedef int sl_symboltab ;


 int * aes_block_fn (int *,int *,int *,int ) ;
 int cf_aes_decrypt ;

__attribute__((used)) static sl_value * aes_block_decrypt(sl_value *self, sl_value *args, sl_symboltab *tab)
{
  return aes_block_fn(self, args, tab, cf_aes_decrypt);
}
