
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; int * x; int ctx; int r; } ;
typedef TYPE_1__ bbs_t ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int BN_get_word (int *) ;
 int BN_mask_bits (int *,int) ;
 int BN_mod_mul_reciprocal (int *,int *,int *,int ,int ) ;
 int * BN_new () ;
 int assert (int) ;

int bbs_next_random_byte (bbs_t *self) {
  BIGNUM *z = BN_new ();
  BN_mod_mul_reciprocal (z, self->x, self->x, self->r, self->ctx);
  BN_mask_bits (self->x, 8);
  int r = BN_get_word (self->x);
  assert (r >= 0 && r < 256);
  BN_clear_free (self->x);
  self->x = z;
  ++(self->i);
  return r;
}
