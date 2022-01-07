
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct testvec_config {int name; } ;
struct hash_testvec {int digest; } ;


 int EINVAL ;
 int EOVERFLOW ;
 int TESTMGR_POISON_LEN ;
 scalar_t__ memcmp (int const*,int ,unsigned int) ;
 int pr_err (char*,char const*,char const*,char const*,int ) ;
 int testmgr_is_poison (int const*,int ) ;

__attribute__((used)) static int check_hash_result(const char *type,
        const u8 *result, unsigned int digestsize,
        const struct hash_testvec *vec,
        const char *vec_name,
        const char *driver,
        const struct testvec_config *cfg)
{
 if (memcmp(result, vec->digest, digestsize) != 0) {
  pr_err("alg: %s: %s test failed (wrong result) on test vector %s, cfg=\"%s\"\n",
         type, driver, vec_name, cfg->name);
  return -EINVAL;
 }
 if (!testmgr_is_poison(&result[digestsize], TESTMGR_POISON_LEN)) {
  pr_err("alg: %s: %s overran result buffer on test vector %s, cfg=\"%s\"\n",
         type, driver, vec_name, cfg->name);
  return -EOVERFLOW;
 }
 return 0;
}
