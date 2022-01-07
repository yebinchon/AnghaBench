
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_unregister_alg (int ) ;
 scalar_t__ ctrblk ;
 size_t des_s390_algs_num ;
 int * des_s390_algs_ptr ;
 int free_page (unsigned long) ;

__attribute__((used)) static void des_s390_exit(void)
{
 while (des_s390_algs_num--)
  crypto_unregister_alg(des_s390_algs_ptr[des_s390_algs_num]);
 if (ctrblk)
  free_page((unsigned long) ctrblk);
}
