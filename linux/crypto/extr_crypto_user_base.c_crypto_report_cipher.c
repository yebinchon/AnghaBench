
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct crypto_report_cipher {int max_keysize; int min_keysize; int blocksize; int type; } ;
struct TYPE_2__ {int cia_max_keysize; int cia_min_keysize; } ;
struct crypto_alg {TYPE_1__ cra_cipher; int cra_blocksize; } ;
typedef int rcipher ;


 int CRYPTOCFGA_REPORT_CIPHER ;
 int memset (struct crypto_report_cipher*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,struct crypto_report_cipher*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int crypto_report_cipher(struct sk_buff *skb, struct crypto_alg *alg)
{
 struct crypto_report_cipher rcipher;

 memset(&rcipher, 0, sizeof(rcipher));

 strscpy(rcipher.type, "cipher", sizeof(rcipher.type));

 rcipher.blocksize = alg->cra_blocksize;
 rcipher.min_keysize = alg->cra_cipher.cia_min_keysize;
 rcipher.max_keysize = alg->cra_cipher.cia_max_keysize;

 return nla_put(skb, CRYPTOCFGA_REPORT_CIPHER,
         sizeof(rcipher), &rcipher);
}
