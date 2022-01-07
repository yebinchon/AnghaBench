
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ aes_s390_aead_alg ;
 size_t aes_s390_algs_num ;
 int * aes_s390_algs_ptr ;
 int crypto_unregister_aead (scalar_t__) ;
 int crypto_unregister_alg (int ) ;
 scalar_t__ ctrblk ;
 int free_page (unsigned long) ;

__attribute__((used)) static void aes_s390_fini(void)
{
 while (aes_s390_algs_num--)
  crypto_unregister_alg(aes_s390_algs_ptr[aes_s390_algs_num]);
 if (ctrblk)
  free_page((unsigned long) ctrblk);

 if (aes_s390_aead_alg)
  crypto_unregister_aead(aes_s390_aead_alg);
}
