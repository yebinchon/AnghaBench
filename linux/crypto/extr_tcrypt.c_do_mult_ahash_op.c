
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct test_mb_ahash_data {int wait; int req; } ;


 int crypto_ahash_digest (int ) ;
 int crypto_wait_req (int,int *) ;
 int pr_info (char*,int,int) ;

__attribute__((used)) static inline int do_mult_ahash_op(struct test_mb_ahash_data *data, u32 num_mb,
       int *rc)
{
 int i, err = 0;


 for (i = 0; i < num_mb; i++)
  rc[i] = crypto_ahash_digest(data[i].req);


 for (i = 0; i < num_mb; i++) {
  rc[i] = crypto_wait_req(rc[i], &data[i].wait);

  if (rc[i]) {
   pr_info("concurrent request %d error %d\n", i, rc[i]);
   err = rc[i];
  }
 }

 return err;
}
