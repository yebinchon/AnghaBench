
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testvec_config {int dummy; } ;
struct cipher_test_sglists {int dummy; } ;
struct aead_testvec {scalar_t__ novrfy; } ;
struct aead_request {int dummy; } ;
typedef int cfgname ;


 unsigned int ARRAY_SIZE (struct testvec_config*) ;
 int TESTVEC_CONFIG_NAMELEN ;
 int cond_resched () ;
 struct testvec_config* default_cipher_testvec_configs ;
 unsigned int fuzz_iterations ;
 int generate_random_testvec_config (struct testvec_config*,char*,int) ;
 int noextratests ;
 int sprintf (char*,char*,unsigned int) ;
 int test_aead_vec_cfg (char const*,int,struct aead_testvec const*,char*,struct testvec_config*,struct aead_request*,struct cipher_test_sglists*) ;

__attribute__((used)) static int test_aead_vec(const char *driver, int enc,
    const struct aead_testvec *vec, unsigned int vec_num,
    struct aead_request *req,
    struct cipher_test_sglists *tsgls)
{
 char vec_name[16];
 unsigned int i;
 int err;

 if (enc && vec->novrfy)
  return 0;

 sprintf(vec_name, "%u", vec_num);

 for (i = 0; i < ARRAY_SIZE(default_cipher_testvec_configs); i++) {
  err = test_aead_vec_cfg(driver, enc, vec, vec_name,
     &default_cipher_testvec_configs[i],
     req, tsgls);
  if (err)
   return err;
 }
 return 0;
}
