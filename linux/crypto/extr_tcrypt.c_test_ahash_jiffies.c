
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int HZ ;
 int crypto_ahash_final (struct ahash_request*) ;
 int crypto_ahash_init (struct ahash_request*) ;
 int crypto_ahash_update (struct ahash_request*) ;
 int do_one_ahash_op (struct ahash_request*,int ) ;
 unsigned long jiffies ;
 int pr_cont (char*,int,long) ;
 int test_ahash_jiffies_digest (struct ahash_request*,int,char*,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int test_ahash_jiffies(struct ahash_request *req, int blen,
         int plen, char *out, int secs)
{
 unsigned long start, end;
 int bcount, pcount;
 int ret;

 if (plen == blen)
  return test_ahash_jiffies_digest(req, blen, out, secs);

 for (start = jiffies, end = start + secs * HZ, bcount = 0;
      time_before(jiffies, end); bcount++) {
  ret = do_one_ahash_op(req, crypto_ahash_init(req));
  if (ret)
   return ret;
  for (pcount = 0; pcount < blen; pcount += plen) {
   ret = do_one_ahash_op(req, crypto_ahash_update(req));
   if (ret)
    return ret;
  }

  ret = do_one_ahash_op(req, crypto_ahash_final(req));
  if (ret)
   return ret;
 }

 pr_cont("%6u opers/sec, %9lu bytes/sec\n",
  bcount / secs, ((long)bcount * blen) / secs);

 return 0;
}
