
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct testvec_config {int dummy; } ;
struct test_sglist {int dummy; } ;
struct shash_desc {int dummy; } ;
struct hash_testvec {int dummy; } ;
struct ahash_request {int dummy; } ;


 int test_ahash_vec_cfg (char const*,struct hash_testvec const*,char const*,struct testvec_config const*,struct ahash_request*,struct test_sglist*,int *) ;
 int test_shash_vec_cfg (char const*,struct hash_testvec const*,char const*,struct testvec_config const*,struct shash_desc*,struct test_sglist*,int *) ;

__attribute__((used)) static int test_hash_vec_cfg(const char *driver,
        const struct hash_testvec *vec,
        const char *vec_name,
        const struct testvec_config *cfg,
        struct ahash_request *req,
        struct shash_desc *desc,
        struct test_sglist *tsgl,
        u8 *hashstate)
{
 int err;







 if (desc) {
  err = test_shash_vec_cfg(driver, vec, vec_name, cfg, desc, tsgl,
      hashstate);
  if (err)
   return err;
 }

 return test_ahash_vec_cfg(driver, vec, vec_name, cfg, req, tsgl,
      hashstate);
}
