
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
struct cipher_test_sglists {int dummy; } ;



__attribute__((used)) static int test_skcipher_vs_generic_impl(const char *driver,
      const char *generic_driver,
      struct skcipher_request *req,
      struct cipher_test_sglists *tsgls)
{
 return 0;
}
