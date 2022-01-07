
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct crypto_stat_compress {void* stat_err_cnt; void* stat_decompress_tlen; void* stat_decompress_cnt; void* stat_compress_tlen; void* stat_compress_cnt; int type; } ;
struct TYPE_3__ {int err_cnt; int decompress_tlen; int decompress_cnt; int compress_tlen; int compress_cnt; } ;
struct TYPE_4__ {TYPE_1__ compress; } ;
struct crypto_alg {TYPE_2__ stats; } ;
typedef int rcomp ;


 int CRYPTOCFGA_STAT_COMPRESS ;
 void* atomic64_read (int *) ;
 int memset (struct crypto_stat_compress*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,struct crypto_stat_compress*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int crypto_report_comp(struct sk_buff *skb, struct crypto_alg *alg)
{
 struct crypto_stat_compress rcomp;

 memset(&rcomp, 0, sizeof(rcomp));

 strscpy(rcomp.type, "compression", sizeof(rcomp.type));
 rcomp.stat_compress_cnt = atomic64_read(&alg->stats.compress.compress_cnt);
 rcomp.stat_compress_tlen = atomic64_read(&alg->stats.compress.compress_tlen);
 rcomp.stat_decompress_cnt = atomic64_read(&alg->stats.compress.decompress_cnt);
 rcomp.stat_decompress_tlen = atomic64_read(&alg->stats.compress.decompress_tlen);
 rcomp.stat_err_cnt = atomic64_read(&alg->stats.compress.err_cnt);

 return nla_put(skb, CRYPTOCFGA_STAT_COMPRESS, sizeof(rcomp), &rcomp);
}
