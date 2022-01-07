
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;
typedef scalar_t__ cycles_t ;


 int crypto_skcipher_decrypt (struct skcipher_request*) ;
 int crypto_skcipher_encrypt (struct skcipher_request*) ;
 int do_one_acipher_op (struct skcipher_request*,int ) ;
 scalar_t__ get_cycles () ;
 int pr_cont (char*,unsigned long,int) ;

__attribute__((used)) static int test_acipher_cycles(struct skcipher_request *req, int enc,
          int blen)
{
 unsigned long cycles = 0;
 int ret = 0;
 int i;


 for (i = 0; i < 4; i++) {
  if (enc)
   ret = do_one_acipher_op(req,
      crypto_skcipher_encrypt(req));
  else
   ret = do_one_acipher_op(req,
      crypto_skcipher_decrypt(req));

  if (ret)
   goto out;
 }


 for (i = 0; i < 8; i++) {
  cycles_t start, end;

  start = get_cycles();
  if (enc)
   ret = do_one_acipher_op(req,
      crypto_skcipher_encrypt(req));
  else
   ret = do_one_acipher_op(req,
      crypto_skcipher_decrypt(req));
  end = get_cycles();

  if (ret)
   goto out;

  cycles += end - start;
 }

out:
 if (ret == 0)
  pr_cont("1 operation in %lu cycles (%d bytes)\n",
   (cycles + 4) / 8, blen);

 return ret;
}
