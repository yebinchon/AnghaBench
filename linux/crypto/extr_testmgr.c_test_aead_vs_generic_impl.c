
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cipher_test_sglists {int dummy; } ;
struct alg_test_desc {int dummy; } ;
struct aead_request {int dummy; } ;



__attribute__((used)) static int test_aead_vs_generic_impl(const char *driver,
         const struct alg_test_desc *test_desc,
         struct aead_request *req,
         struct cipher_test_sglists *tsgls)
{
 return 0;
}
