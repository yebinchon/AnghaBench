
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct test_sglist {int dummy; } ;
struct shash_desc {int dummy; } ;
struct ahash_request {int dummy; } ;



__attribute__((used)) static int test_hash_vs_generic_impl(const char *driver,
         const char *generic_driver,
         unsigned int maxkeysize,
         struct ahash_request *req,
         struct shash_desc *desc,
         struct test_sglist *tsgl,
         u8 *hashstate)
{
 return 0;
}
