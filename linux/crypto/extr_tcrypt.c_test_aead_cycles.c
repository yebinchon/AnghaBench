
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;
typedef scalar_t__ cycles_t ;


 int crypto_aead_decrypt (struct aead_request*) ;
 int crypto_aead_encrypt (struct aead_request*) ;
 int do_one_aead_op (struct aead_request*,int ) ;
 scalar_t__ get_cycles () ;
 int printk (char*,unsigned long,int) ;

__attribute__((used)) static int test_aead_cycles(struct aead_request *req, int enc, int blen)
{
 unsigned long cycles = 0;
 int ret = 0;
 int i;


 for (i = 0; i < 4; i++) {
  if (enc)
   ret = do_one_aead_op(req, crypto_aead_encrypt(req));
  else
   ret = do_one_aead_op(req, crypto_aead_decrypt(req));

  if (ret)
   goto out;
 }


 for (i = 0; i < 8; i++) {
  cycles_t start, end;

  start = get_cycles();
  if (enc)
   ret = do_one_aead_op(req, crypto_aead_encrypt(req));
  else
   ret = do_one_aead_op(req, crypto_aead_decrypt(req));
  end = get_cycles();

  if (ret)
   goto out;

  cycles += end - start;
 }

out:
 if (ret == 0)
  printk("1 operation in %lu cycles (%d bytes)\n",
         (cycles + 4) / 8, blen);

 return ret;
}
