
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kl ;
 int kl_begin (int) ;
 int kl_destroy (int,int) ;
 int kl_end (int) ;
 int kl_init (int) ;
 int kl_next (int) ;
 int* kl_pushp (int,int) ;
 int kl_shift (int,int,int ) ;
 int kl_val (int) ;
 int klist_t (int) ;
 int kliter_t (int) ;
 int p ;
 int printf (char*,int) ;

int main()
{
 klist_t(32) *kl;
 kliter_t(32) *p;
 kl = kl_init(32);
 *kl_pushp(32, kl) = 1;
 *kl_pushp(32, kl) = 10;
 kl_shift(32, kl, 0);
 for (p = kl_begin(kl); p != kl_end(kl); p = kl_next(p))
  printf("%d\n", kl_val(p));
 kl_destroy(32, kl);
 return 0;
}
