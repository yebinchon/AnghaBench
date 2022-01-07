
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_conf {char* csums_alg; char* verify_alg; char* integrity_alg; scalar_t__* cram_hmac_alg; } ;
struct crypto {int cram_hmac_tfm; int integrity_tfm; int verify_tfm; int csums_tfm; } ;
typedef enum drbd_ret_code { ____Placeholder_drbd_ret_code } drbd_ret_code ;


 int CRYPTO_MAX_ALG_NAME ;
 int ERR_AUTH_ALG ;
 int ERR_CSUMS_ALG ;
 int ERR_INTEGRITY_ALG ;
 int ERR_VERIFY_ALG ;
 int NO_ERROR ;
 int alloc_shash (int *,char*,int ) ;
 int snprintf (char*,int,char*,scalar_t__*) ;

__attribute__((used)) static enum drbd_ret_code
alloc_crypto(struct crypto *crypto, struct net_conf *new_net_conf)
{
 char hmac_name[CRYPTO_MAX_ALG_NAME];
 enum drbd_ret_code rv;

 rv = alloc_shash(&crypto->csums_tfm, new_net_conf->csums_alg,
    ERR_CSUMS_ALG);
 if (rv != NO_ERROR)
  return rv;
 rv = alloc_shash(&crypto->verify_tfm, new_net_conf->verify_alg,
    ERR_VERIFY_ALG);
 if (rv != NO_ERROR)
  return rv;
 rv = alloc_shash(&crypto->integrity_tfm, new_net_conf->integrity_alg,
    ERR_INTEGRITY_ALG);
 if (rv != NO_ERROR)
  return rv;
 if (new_net_conf->cram_hmac_alg[0] != 0) {
  snprintf(hmac_name, CRYPTO_MAX_ALG_NAME, "hmac(%s)",
    new_net_conf->cram_hmac_alg);

  rv = alloc_shash(&crypto->cram_hmac_tfm, hmac_name,
     ERR_AUTH_ALG);
 }

 return rv;
}
