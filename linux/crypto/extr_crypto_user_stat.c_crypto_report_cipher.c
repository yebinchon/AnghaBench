
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct crypto_stat_cipher {void* stat_err_cnt; void* stat_decrypt_tlen; void* stat_decrypt_cnt; void* stat_encrypt_tlen; void* stat_encrypt_cnt; int type; } ;
struct TYPE_3__ {int err_cnt; int decrypt_tlen; int decrypt_cnt; int encrypt_tlen; int encrypt_cnt; } ;
struct TYPE_4__ {TYPE_1__ cipher; } ;
struct crypto_alg {TYPE_2__ stats; } ;
typedef int rcipher ;


 int CRYPTOCFGA_STAT_CIPHER ;
 void* atomic64_read (int *) ;
 int memset (struct crypto_stat_cipher*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,struct crypto_stat_cipher*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int crypto_report_cipher(struct sk_buff *skb, struct crypto_alg *alg)
{
 struct crypto_stat_cipher rcipher;

 memset(&rcipher, 0, sizeof(rcipher));

 strscpy(rcipher.type, "cipher", sizeof(rcipher.type));

 rcipher.stat_encrypt_cnt = atomic64_read(&alg->stats.cipher.encrypt_cnt);
 rcipher.stat_encrypt_tlen = atomic64_read(&alg->stats.cipher.encrypt_tlen);
 rcipher.stat_decrypt_cnt = atomic64_read(&alg->stats.cipher.decrypt_cnt);
 rcipher.stat_decrypt_tlen = atomic64_read(&alg->stats.cipher.decrypt_tlen);
 rcipher.stat_err_cnt = atomic64_read(&alg->stats.cipher.err_cnt);

 return nla_put(skb, CRYPTOCFGA_STAT_CIPHER, sizeof(rcipher), &rcipher);
}
