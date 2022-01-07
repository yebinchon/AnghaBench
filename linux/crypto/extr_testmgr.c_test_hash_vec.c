
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
typedef int cfgname ;


 unsigned int ARRAY_SIZE (struct testvec_config*) ;
 int TESTVEC_CONFIG_NAMELEN ;
 int cond_resched () ;
 struct testvec_config* default_hash_testvec_configs ;
 unsigned int fuzz_iterations ;
 int generate_random_testvec_config (struct testvec_config*,char*,int) ;
 int noextratests ;
 int sprintf (char*,char*,unsigned int) ;
 int test_hash_vec_cfg (char const*,struct hash_testvec const*,char*,struct testvec_config*,struct ahash_request*,struct shash_desc*,struct test_sglist*,int *) ;

__attribute__((used)) static int test_hash_vec(const char *driver, const struct hash_testvec *vec,
    unsigned int vec_num, struct ahash_request *req,
    struct shash_desc *desc, struct test_sglist *tsgl,
    u8 *hashstate)
{
 char vec_name[16];
 unsigned int i;
 int err;

 sprintf(vec_name, "%u", vec_num);

 for (i = 0; i < ARRAY_SIZE(default_hash_testvec_configs); i++) {
  err = test_hash_vec_cfg(driver, vec, vec_name,
     &default_hash_testvec_configs[i],
     req, desc, tsgl, hashstate);
  if (err)
   return err;
 }
 return 0;
}
