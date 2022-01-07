
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __crypto_unregister_alg (int *) ;
 int cbc_paes_alg ;
 int ctr_paes_alg ;
 scalar_t__ ctrblk ;
 int ecb_paes_alg ;
 int free_page (unsigned long) ;
 int xts_paes_alg ;

__attribute__((used)) static void paes_s390_fini(void)
{
 if (ctrblk)
  free_page((unsigned long) ctrblk);
 __crypto_unregister_alg(&ctr_paes_alg);
 __crypto_unregister_alg(&xts_paes_alg);
 __crypto_unregister_alg(&cbc_paes_alg);
 __crypto_unregister_alg(&ecb_paes_alg);
}
