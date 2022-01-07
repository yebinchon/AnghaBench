
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct test_mb_aead_data {int wait; int req; } ;


 int ENCRYPT ;
 int crypto_aead_decrypt (int ) ;
 int crypto_aead_encrypt (int ) ;
 int crypto_wait_req (int,int *) ;
 int pr_info (char*,int,int) ;

__attribute__((used)) static int do_mult_aead_op(struct test_mb_aead_data *data, int enc,
    u32 num_mb, int *rc)
{
 int i, err = 0;


 for (i = 0; i < num_mb; i++) {
  if (enc == ENCRYPT)
   rc[i] = crypto_aead_encrypt(data[i].req);
  else
   rc[i] = crypto_aead_decrypt(data[i].req);
 }


 for (i = 0; i < num_mb; i++) {
  rc[i] = crypto_wait_req(rc[i], &data[i].wait);

  if (rc[i]) {
   pr_info("concurrent request %d error %d\n", i, rc[i]);
   err = rc[i];
  }
 }

 return err;
}
