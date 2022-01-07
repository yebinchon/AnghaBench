
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int HZ ;
 int crypto_ahash_digest (struct ahash_request*) ;
 int do_one_ahash_op (struct ahash_request*,int ) ;
 unsigned long jiffies ;
 int printk (char*,int,long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int test_ahash_jiffies_digest(struct ahash_request *req, int blen,
         char *out, int secs)
{
 unsigned long start, end;
 int bcount;
 int ret;

 for (start = jiffies, end = start + secs * HZ, bcount = 0;
      time_before(jiffies, end); bcount++) {
  ret = do_one_ahash_op(req, crypto_ahash_digest(req));
  if (ret)
   return ret;
 }

 printk("%6u opers/sec, %9lu bytes/sec\n",
        bcount / secs, ((long)bcount * blen) / secs);

 return 0;
}
