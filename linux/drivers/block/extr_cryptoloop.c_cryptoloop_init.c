
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_info64 {int lo_offset; int lo_encrypt_key_size; int lo_encrypt_key; int lo_crypt_name; } ;
struct loop_device {struct crypto_sync_skcipher* key_data; } ;
struct crypto_sync_skcipher {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct crypto_sync_skcipher*) ;
 int LOOP_IV_SECTOR_SIZE ;
 int LO_NAME_SIZE ;
 int PTR_ERR (struct crypto_sync_skcipher*) ;
 struct crypto_sync_skcipher* crypto_alloc_sync_skcipher (char*,int ,int ) ;
 int crypto_free_sync_skcipher (struct crypto_sync_skcipher*) ;
 int crypto_sync_skcipher_setkey (struct crypto_sync_skcipher*,int ,int ) ;
 int memcpy (char*,int ,int) ;
 int memmove (char*,char*,int) ;
 int strcspn (char*,char*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int
cryptoloop_init(struct loop_device *lo, const struct loop_info64 *info)
{
 int err = -EINVAL;
 int cipher_len;
 int mode_len;
 char cms[LO_NAME_SIZE];
 char *mode;
 char *cmsp = cms;
 struct crypto_sync_skcipher *tfm;



 if (info->lo_offset % LOOP_IV_SECTOR_SIZE)
  goto out;

 strncpy(cms, info->lo_crypt_name, LO_NAME_SIZE);
 cms[LO_NAME_SIZE - 1] = 0;

 cipher_len = strcspn(cmsp, "-");

 mode = cmsp + cipher_len;
 mode_len = 0;
 if (*mode) {
  mode++;
  mode_len = strcspn(mode, "-");
 }

 if (!mode_len) {
  mode = "cbc";
  mode_len = 3;
 }

 if (cipher_len + mode_len + 3 > LO_NAME_SIZE)
  return -EINVAL;

 memmove(cms, mode, mode_len);
 cmsp = cms + mode_len;
 *cmsp++ = '(';
 memcpy(cmsp, info->lo_crypt_name, cipher_len);
 cmsp += cipher_len;
 *cmsp++ = ')';
 *cmsp = 0;

 tfm = crypto_alloc_sync_skcipher(cms, 0, 0);
 if (IS_ERR(tfm))
  return PTR_ERR(tfm);

 err = crypto_sync_skcipher_setkey(tfm, info->lo_encrypt_key,
       info->lo_encrypt_key_size);

 if (err != 0)
  goto out_free_tfm;

 lo->key_data = tfm;
 return 0;

 out_free_tfm:
 crypto_free_sync_skcipher(tfm);

 out:
 return err;
}
