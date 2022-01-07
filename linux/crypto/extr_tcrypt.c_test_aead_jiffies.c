
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int HZ ;
 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 int do_one_aead_op (struct aead_request*,int ) ;
 unsigned long jiffies ;
 int printk (char*,int,int,long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int test_aead_jiffies(struct aead_request *req, int enc,
    int blen, int secs)
{
 unsigned long start, end;
 int bcount;
 int ret;

 for (start = jiffies, end = start + secs * HZ, bcount = 0;
      time_before(jiffies, end); bcount++) {
  if (enc)
   ret = do_one_aead_op(req, crypto_aead_encrypt(req));
  else
   ret = do_one_aead_op(req, crypto_aead_decrypt(req));

  if (ret)
   return ret;
 }

 printk("%d operations in %d seconds (%ld bytes)\n",
        bcount, secs, (long)bcount * blen);
 return 0;
}
