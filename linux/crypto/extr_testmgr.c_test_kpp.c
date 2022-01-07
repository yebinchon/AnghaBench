
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpp_testvec {int dummy; } ;
struct crypto_kpp {int dummy; } ;


 int do_test_kpp (struct crypto_kpp*,int ,char const*) ;
 int pr_err (char*,char const*,int,int) ;

__attribute__((used)) static int test_kpp(struct crypto_kpp *tfm, const char *alg,
      const struct kpp_testvec *vecs, unsigned int tcount)
{
 int ret, i;

 for (i = 0; i < tcount; i++) {
  ret = do_test_kpp(tfm, vecs++, alg);
  if (ret) {
   pr_err("alg: %s: test failed on vector %d, err=%d\n",
          alg, i + 1, ret);
   return ret;
  }
 }
 return 0;
}
