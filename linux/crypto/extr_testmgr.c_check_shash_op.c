
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testvec_config {int name; } ;


 int pr_err (char*,char const*,char const*,int,char const*,int ) ;

__attribute__((used)) static inline int check_shash_op(const char *op, int err,
     const char *driver, const char *vec_name,
     const struct testvec_config *cfg)
{
 if (err)
  pr_err("alg: shash: %s %s() failed with err %d on test vector %s, cfg=\"%s\"\n",
         driver, op, err, vec_name, cfg->name);
 return err;
}
