
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct crypto_stat_rng {void* stat_err_cnt; void* stat_seed_cnt; void* stat_generate_tlen; void* stat_generate_cnt; int type; } ;
struct TYPE_3__ {int err_cnt; int seed_cnt; int generate_tlen; int generate_cnt; } ;
struct TYPE_4__ {TYPE_1__ rng; } ;
struct crypto_alg {TYPE_2__ stats; } ;
typedef int rrng ;


 int CRYPTOCFGA_STAT_RNG ;
 void* atomic64_read (int *) ;
 int memset (struct crypto_stat_rng*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,struct crypto_stat_rng*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int crypto_report_rng(struct sk_buff *skb, struct crypto_alg *alg)
{
 struct crypto_stat_rng rrng;

 memset(&rrng, 0, sizeof(rrng));

 strscpy(rrng.type, "rng", sizeof(rrng.type));

 rrng.stat_generate_cnt = atomic64_read(&alg->stats.rng.generate_cnt);
 rrng.stat_generate_tlen = atomic64_read(&alg->stats.rng.generate_tlen);
 rrng.stat_seed_cnt = atomic64_read(&alg->stats.rng.seed_cnt);
 rrng.stat_err_cnt = atomic64_read(&alg->stats.rng.err_cnt);

 return nla_put(skb, CRYPTOCFGA_STAT_RNG, sizeof(rrng), &rrng);
}
