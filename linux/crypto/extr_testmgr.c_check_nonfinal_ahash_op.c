
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct testvec_config {int name; } ;


 int EINVAL ;
 int pr_err (char*,char const*,char const*,...) ;
 int testmgr_is_poison (int *,unsigned int) ;

__attribute__((used)) static int check_nonfinal_ahash_op(const char *op, int err,
       u8 *result, unsigned int digestsize,
       const char *driver, const char *vec_name,
       const struct testvec_config *cfg)
{
 if (err) {
  pr_err("alg: ahash: %s %s() failed with err %d on test vector %s, cfg=\"%s\"\n",
         driver, op, err, vec_name, cfg->name);
  return err;
 }
 if (!testmgr_is_poison(result, digestsize)) {
  pr_err("alg: ahash: %s %s() used result buffer on test vector %s, cfg=\"%s\"\n",
         driver, op, vec_name, cfg->name);
  return -EINVAL;
 }
 return 0;
}
