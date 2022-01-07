
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BCRYPT_MAX_KEYLEN ;
 int ENC_MAGIC_LEN ;
 int ENC_PRODUCT_LEN ;
 int ENC_VERSION_LEN ;
 int ERR (char*,...) ;
 int * crypt_key ;
 int do_decrypt ;
 int * ifname ;
 int * magic ;
 int * ofname ;
 int * product ;
 int strlen (int *) ;
 int * version ;

__attribute__((used)) static int check_params(void)
{
 int ret = -1;

 if (ifname == ((void*)0)) {
  ERR("no input file specified");
  goto out;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  goto out;
 }

 if (crypt_key == ((void*)0)) {
  ERR("no key specified");
  goto out;
 } else if (strlen(crypt_key) > BCRYPT_MAX_KEYLEN) {
  ERR("key '%s' is too long", crypt_key);
  goto out;
 }

 if (strlen(magic) != (ENC_MAGIC_LEN - 1)) {
  ERR("length of magic must be %d", ENC_MAGIC_LEN - 1);
  goto out;
 }

 if (!do_decrypt) {
  if (product == ((void*)0)) {
   ERR("no product specified");
   goto out;
  }

  if (version == ((void*)0)) {
   ERR("no version specified");
   goto out;
  }

  if (strlen(product) > (ENC_PRODUCT_LEN - 1)) {
   ERR("product name '%s' is too long", product);
   goto out;
  }

  if (strlen(version) > (ENC_VERSION_LEN - 1)) {
   ERR("version '%s' is too long", version);
   goto out;
  }
 }

 ret = 0;

out:
 return ret;
}
