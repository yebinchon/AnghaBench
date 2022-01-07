
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct crypto_alg {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int crypto_skcipher_report(struct sk_buff *skb, struct crypto_alg *alg)
{
 return -ENOSYS;
}
