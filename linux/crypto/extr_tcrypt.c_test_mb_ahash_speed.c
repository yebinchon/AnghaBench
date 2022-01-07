
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct test_mb_ahash_data {int * xbuf; int req; int result; scalar_t__ sg; int wait; } ;
struct hash_speed {unsigned int blen; unsigned int plen; scalar_t__ klen; } ;
struct crypto_ahash {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 unsigned int PAGE_SIZE ;
 int PTR_ERR (struct crypto_ahash*) ;
 unsigned int XBUFSIZE ;
 int ahash_request_alloc (struct crypto_ahash*,int ) ;
 int ahash_request_free (int ) ;
 int ahash_request_set_callback (int ,int ,int ,int *) ;
 int ahash_request_set_crypt (int ,scalar_t__,int ,unsigned int) ;
 int cond_resched () ;
 int crypto_ahash ;
 int crypto_ahash_setkey (struct crypto_ahash*,int ,scalar_t__) ;
 struct crypto_ahash* crypto_alloc_ahash (char const*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int crypto_init_wait (int *) ;
 int crypto_req_done ;
 int get_driver_name (int ,struct crypto_ahash*) ;
 struct test_mb_ahash_data* kcalloc (unsigned int,int,int ) ;
 int kfree (struct test_mb_ahash_data*) ;
 int memset (int ,int,unsigned int) ;
 int pr_err (char*,...) ;
 int pr_info (char*,...) ;
 int sg_init_table (scalar_t__,unsigned int) ;
 int sg_set_buf (scalar_t__,int ,unsigned int) ;
 int test_mb_ahash_cycles (struct test_mb_ahash_data*,int,unsigned int) ;
 int test_mb_ahash_jiffies (struct test_mb_ahash_data*,int,unsigned int,unsigned int) ;
 scalar_t__ testmgr_alloc_buf (int *) ;
 int testmgr_free_buf (int *) ;
 int * tvmem ;

__attribute__((used)) static void test_mb_ahash_speed(const char *algo, unsigned int secs,
    struct hash_speed *speed, u32 num_mb)
{
 struct test_mb_ahash_data *data;
 struct crypto_ahash *tfm;
 unsigned int i, j, k;
 int ret;

 data = kcalloc(num_mb, sizeof(*data), GFP_KERNEL);
 if (!data)
  return;

 tfm = crypto_alloc_ahash(algo, 0, 0);
 if (IS_ERR(tfm)) {
  pr_err("failed to load transform for %s: %ld\n",
   algo, PTR_ERR(tfm));
  goto free_data;
 }

 for (i = 0; i < num_mb; ++i) {
  if (testmgr_alloc_buf(data[i].xbuf))
   goto out;

  crypto_init_wait(&data[i].wait);

  data[i].req = ahash_request_alloc(tfm, GFP_KERNEL);
  if (!data[i].req) {
   pr_err("alg: hash: Failed to allocate request for %s\n",
          algo);
   goto out;
  }

  ahash_request_set_callback(data[i].req, 0, crypto_req_done,
        &data[i].wait);

  sg_init_table(data[i].sg, XBUFSIZE);
  for (j = 0; j < XBUFSIZE; j++) {
   sg_set_buf(data[i].sg + j, data[i].xbuf[j], PAGE_SIZE);
   memset(data[i].xbuf[j], 0xff, PAGE_SIZE);
  }
 }

 pr_info("\ntesting speed of multibuffer %s (%s)\n", algo,
  get_driver_name(crypto_ahash, tfm));

 for (i = 0; speed[i].blen != 0; i++) {

  if (speed[i].blen != speed[i].plen)
   continue;

  if (speed[i].blen > XBUFSIZE * PAGE_SIZE) {
   pr_err("template (%u) too big for tvmem (%lu)\n",
          speed[i].blen, XBUFSIZE * PAGE_SIZE);
   goto out;
  }

  if (speed[i].klen)
   crypto_ahash_setkey(tfm, tvmem[0], speed[i].klen);

  for (k = 0; k < num_mb; k++)
   ahash_request_set_crypt(data[k].req, data[k].sg,
      data[k].result, speed[i].blen);

  pr_info("test%3u "
   "(%5u byte blocks,%5u bytes per update,%4u updates): ",
   i, speed[i].blen, speed[i].plen,
   speed[i].blen / speed[i].plen);

  if (secs) {
   ret = test_mb_ahash_jiffies(data, speed[i].blen, secs,
          num_mb);
   cond_resched();
  } else {
   ret = test_mb_ahash_cycles(data, speed[i].blen, num_mb);
  }


  if (ret) {
   pr_err("At least one hashing failed ret=%d\n", ret);
   break;
  }
 }

out:
 for (k = 0; k < num_mb; ++k)
  ahash_request_free(data[k].req);

 for (k = 0; k < num_mb; ++k)
  testmgr_free_buf(data[k].xbuf);

 crypto_free_ahash(tfm);

free_data:
 kfree(data);
}
