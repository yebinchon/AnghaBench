
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct cipher_test_suite {unsigned int count; int * vecs; } ;
struct cipher_test_sglists {int dummy; } ;


 int cond_resched () ;
 int test_skcipher_vec (char const*,int,int *,unsigned int,struct skcipher_request*,struct cipher_test_sglists*) ;

__attribute__((used)) static int test_skcipher(const char *driver, int enc,
    const struct cipher_test_suite *suite,
    struct skcipher_request *req,
    struct cipher_test_sglists *tsgls)
{
 unsigned int i;
 int err;

 for (i = 0; i < suite->count; i++) {
  err = test_skcipher_vec(driver, enc, &suite->vecs[i], i, req,
     tsgls);
  if (err)
   return err;
  cond_resched();
 }
 return 0;
}
