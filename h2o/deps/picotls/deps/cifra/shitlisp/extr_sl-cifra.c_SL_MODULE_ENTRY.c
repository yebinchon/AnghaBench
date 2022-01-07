
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sl_symboltab ;


 int ER (int ) ;
 int aes_block_decrypt ;
 int aes_block_encrypt ;
 int hmac_sha224 ;
 int hmac_sha256 ;
 int hmac_sha384 ;
 int hmac_sha512 ;
 int pbkdf2_sha224 ;
 int pbkdf2_sha256 ;
 int sha224 ;
 int sha256 ;
 int sha384 ;
 int sha512 ;
 int sl_symboltab_add_name_native (int *,char*,int ) ;

int SL_MODULE_ENTRY(sl_symboltab *tab)
{
  ER(sl_symboltab_add_name_native(tab, "aes-encrypt", aes_block_encrypt));
  ER(sl_symboltab_add_name_native(tab, "aes-decrypt", aes_block_decrypt));
  ER(sl_symboltab_add_name_native(tab, "sha224", sha224));
  ER(sl_symboltab_add_name_native(tab, "sha256", sha256));
  ER(sl_symboltab_add_name_native(tab, "sha384", sha384));
  ER(sl_symboltab_add_name_native(tab, "sha512", sha512));
  ER(sl_symboltab_add_name_native(tab, "hmac-sha224", hmac_sha224));
  ER(sl_symboltab_add_name_native(tab, "hmac-sha256", hmac_sha256));
  ER(sl_symboltab_add_name_native(tab, "hmac-sha384", hmac_sha384));
  ER(sl_symboltab_add_name_native(tab, "hmac-sha512", hmac_sha512));
  ER(sl_symboltab_add_name_native(tab, "pbkdf2-sha224", pbkdf2_sha224));
  ER(sl_symboltab_add_name_native(tab, "pbkdf2-sha256", pbkdf2_sha256));
  return 0;
}
