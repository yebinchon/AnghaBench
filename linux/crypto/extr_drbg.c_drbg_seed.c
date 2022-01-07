
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbg_string {scalar_t__ len; int list; scalar_t__ buf; } ;
struct TYPE_4__ {unsigned char* buf; unsigned int len; int list; } ;
struct drbg_state {int C; int V; int jent; TYPE_2__ test_data; TYPE_1__* core; } ;
typedef int entropy ;
struct TYPE_3__ {int flags; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int LIST_HEAD (int ) ;
 int __drbg_seed (struct drbg_state*,int *,int) ;
 int crypto_rng_get_bytes (int ,unsigned char*,unsigned int) ;
 int drbg_get_random_bytes (struct drbg_state*,unsigned char*,unsigned int) ;
 scalar_t__ drbg_max_addtl (struct drbg_state*) ;
 unsigned int drbg_sec_strength (int ) ;
 int drbg_statelen (struct drbg_state*) ;
 int drbg_string_fill (struct drbg_string*,unsigned char*,unsigned int) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int memset (int ,int ,int ) ;
 int memzero_explicit (unsigned char*,unsigned int) ;
 int pr_devel (char*,...) ;
 int seedlist ;

__attribute__((used)) static int drbg_seed(struct drbg_state *drbg, struct drbg_string *pers,
       bool reseed)
{
 int ret;
 unsigned char entropy[((32 + 16) * 2)];
 unsigned int entropylen = drbg_sec_strength(drbg->core->flags);
 struct drbg_string data1;
 LIST_HEAD(seedlist);


 if (pers && pers->len > (drbg_max_addtl(drbg))) {
  pr_devel("DRBG: personalization string too long %zu\n",
    pers->len);
  return -EINVAL;
 }

 if (list_empty(&drbg->test_data.list)) {
  drbg_string_fill(&data1, drbg->test_data.buf,
     drbg->test_data.len);
  pr_devel("DRBG: using test entropy\n");
 } else {
  BUG_ON(!entropylen);
  if (!reseed)
   entropylen = ((entropylen + 1) / 2) * 3;
  BUG_ON((entropylen * 2) > sizeof(entropy));


  ret = drbg_get_random_bytes(drbg, entropy, entropylen);
  if (ret)
   goto out;

  if (!drbg->jent) {
   drbg_string_fill(&data1, entropy, entropylen);
   pr_devel("DRBG: (re)seeding with %u bytes of entropy\n",
     entropylen);
  } else {

   ret = crypto_rng_get_bytes(drbg->jent,
         entropy + entropylen,
         entropylen);
   if (ret) {
    pr_devel("DRBG: jent failed with %d\n", ret);
    goto out;
   }

   drbg_string_fill(&data1, entropy, entropylen * 2);
   pr_devel("DRBG: (re)seeding with %u bytes of entropy\n",
     entropylen * 2);
  }
 }
 list_add_tail(&data1.list, &seedlist);






 if (pers && pers->buf && 0 < pers->len) {
  list_add_tail(&pers->list, &seedlist);
  pr_devel("DRBG: using personalization string\n");
 }

 if (!reseed) {
  memset(drbg->V, 0, drbg_statelen(drbg));
  memset(drbg->C, 0, drbg_statelen(drbg));
 }

 ret = __drbg_seed(drbg, &seedlist, reseed);

out:
 memzero_explicit(entropy, entropylen * 2);

 return ret;
}
