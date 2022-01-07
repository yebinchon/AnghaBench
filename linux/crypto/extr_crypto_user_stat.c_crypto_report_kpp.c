
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct crypto_stat_kpp {void* stat_err_cnt; void* stat_compute_shared_secret_cnt; void* stat_generate_public_key_cnt; void* stat_setsecret_cnt; int type; } ;
struct TYPE_3__ {int err_cnt; int compute_shared_secret_cnt; int generate_public_key_cnt; int setsecret_cnt; } ;
struct TYPE_4__ {TYPE_1__ kpp; } ;
struct crypto_alg {TYPE_2__ stats; } ;
typedef int rkpp ;


 int CRYPTOCFGA_STAT_KPP ;
 void* atomic64_read (int *) ;
 int memset (struct crypto_stat_kpp*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,struct crypto_stat_kpp*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int crypto_report_kpp(struct sk_buff *skb, struct crypto_alg *alg)
{
 struct crypto_stat_kpp rkpp;

 memset(&rkpp, 0, sizeof(rkpp));

 strscpy(rkpp.type, "kpp", sizeof(rkpp.type));

 rkpp.stat_setsecret_cnt = atomic64_read(&alg->stats.kpp.setsecret_cnt);
 rkpp.stat_generate_public_key_cnt = atomic64_read(&alg->stats.kpp.generate_public_key_cnt);
 rkpp.stat_compute_shared_secret_cnt = atomic64_read(&alg->stats.kpp.compute_shared_secret_cnt);
 rkpp.stat_err_cnt = atomic64_read(&alg->stats.kpp.err_cnt);

 return nla_put(skb, CRYPTOCFGA_STAT_KPP, sizeof(rkpp), &rkpp);
}
