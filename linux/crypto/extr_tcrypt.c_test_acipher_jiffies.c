
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int HZ ;
 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int do_one_acipher_op (struct skcipher_request*,int ) ;
 unsigned long jiffies ;
 int pr_cont (char*,int,int,long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int test_acipher_jiffies(struct skcipher_request *req, int enc,
    int blen, int secs)
{
 unsigned long start, end;
 int bcount;
 int ret;

 for (start = jiffies, end = start + secs * HZ, bcount = 0;
      time_before(jiffies, end); bcount++) {
  if (enc)
   ret = do_one_acipher_op(req,
      crypto_skcipher_encrypt(req));
  else
   ret = do_one_acipher_op(req,
      crypto_skcipher_decrypt(req));

  if (ret)
   return ret;
 }

 pr_cont("%d operations in %d seconds (%ld bytes)\n",
  bcount, secs, (long)bcount * blen);
 return 0;
}
