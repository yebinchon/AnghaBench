
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct crypto_report_comp {int type; } ;
struct crypto_alg {int dummy; } ;
typedef int rcomp ;


 int CRYPTOCFGA_REPORT_COMPRESS ;
 int memset (struct crypto_report_comp*,int ,int) ;
 int nla_put (struct sk_buff*,int ,int,struct crypto_report_comp*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int crypto_report_comp(struct sk_buff *skb, struct crypto_alg *alg)
{
 struct crypto_report_comp rcomp;

 memset(&rcomp, 0, sizeof(rcomp));

 strscpy(rcomp.type, "compression", sizeof(rcomp.type));

 return nla_put(skb, CRYPTOCFGA_REPORT_COMPRESS, sizeof(rcomp), &rcomp);
}
