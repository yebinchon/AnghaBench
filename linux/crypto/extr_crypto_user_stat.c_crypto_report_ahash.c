
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct crypto_stat_hash {void* stat_err_cnt; void* stat_hash_tlen; void* stat_hash_cnt; int type; } ;
struct TYPE_4__ {int err_cnt; int hash_tlen; int hash_cnt; } ;
struct TYPE_3__ {TYPE_2__ hash; } ;
struct crypto_alg {TYPE_1__ stats; } ;
typedef int rhash ;


 int CRYPTOCFGA_STAT_HASH ;
 void* atomic64_read (int *) ;
 int memset (struct crypto_stat_hash*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,struct crypto_stat_hash*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int crypto_report_ahash(struct sk_buff *skb, struct crypto_alg *alg)
{
 struct crypto_stat_hash rhash;

 memset(&rhash, 0, sizeof(rhash));

 strscpy(rhash.type, "ahash", sizeof(rhash.type));

 rhash.stat_hash_cnt = atomic64_read(&alg->stats.hash.hash_cnt);
 rhash.stat_hash_tlen = atomic64_read(&alg->stats.hash.hash_tlen);
 rhash.stat_err_cnt = atomic64_read(&alg->stats.hash.err_cnt);

 return nla_put(skb, CRYPTOCFGA_STAT_HASH, sizeof(rhash), &rhash);
}
