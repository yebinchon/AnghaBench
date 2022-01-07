
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;
typedef scalar_t__ cycles_t ;


 int crypto_ahash_digest (struct ahash_request*) ;
 int do_one_ahash_op (struct ahash_request*,int ) ;
 scalar_t__ get_cycles () ;
 int pr_cont (char*,unsigned long,unsigned long) ;

__attribute__((used)) static int test_ahash_cycles_digest(struct ahash_request *req, int blen,
        char *out)
{
 unsigned long cycles = 0;
 int ret, i;


 for (i = 0; i < 4; i++) {
  ret = do_one_ahash_op(req, crypto_ahash_digest(req));
  if (ret)
   goto out;
 }


 for (i = 0; i < 8; i++) {
  cycles_t start, end;

  start = get_cycles();

  ret = do_one_ahash_op(req, crypto_ahash_digest(req));
  if (ret)
   goto out;

  end = get_cycles();

  cycles += end - start;
 }

out:
 if (ret)
  return ret;

 pr_cont("%6lu cycles/operation, %4lu cycles/byte\n",
  cycles / 8, cycles / (8 * blen));

 return 0;
}
