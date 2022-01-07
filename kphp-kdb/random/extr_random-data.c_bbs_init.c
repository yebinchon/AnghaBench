
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bits; int ctx; int mlen; int tmp; scalar_t__ i; int * m; int * x; int r; } ;
typedef TYPE_1__ bbs_t ;
typedef int BIGNUM ;


 int BN_CTX_new () ;
 int BN_RECP_CTX_new () ;
 int BN_RECP_CTX_set (int ,int *,int) ;
 int BN_clear_free (int *) ;
 int BN_free (int *) ;
 int BN_gcd (int *,int *,int *,int) ;
 int * BN_generate_prime (int *,int,int ,int *,int *,int *,int *) ;
 int BN_is_one (int *) ;
 int BN_mul (int *,int *,int *,int) ;
 void* BN_new () ;
 int BN_num_bytes (int *) ;
 int BN_rshift1 (int *,int *) ;
 int BN_set_word (int *,int) ;
 int BN_sub (int *,int *,int ) ;
 int BN_value_one () ;
 int assert (int) ;
 int calloc (int,int) ;
 int prng_seed (char const* const,int) ;
 int vkprintf (int,char*) ;

int bbs_init (bbs_t *self, int bits, const char *const password_filename, int password_length) {
  if (bits < 256) {
    return -1;
  }
  self->bits = bits;
  self->ctx = BN_CTX_new ();
  assert (self->ctx);
  BIGNUM *three = BN_new ();
  assert (three);
  assert (1 == BN_set_word (three, 3));
  BIGNUM *four = BN_new ();
  assert (four);
  assert (1 == BN_set_word (four, 4));

  prng_seed (password_filename, password_length);
  vkprintf (2, "PRNG initialized.\n");
  self->bits = bits;
  vkprintf (2, "p was generated.\n");
  BIGNUM *t = BN_new (), *p = ((void*)0), *q = ((void*)0);
  while (1) {
    BIGNUM *p1 = BN_new (), *q1 = BN_new ();
    assert (p1 && q1);
    p = BN_generate_prime (((void*)0), bits / 2, 0, four, three, ((void*)0), ((void*)0));
    assert (p);
    BN_sub (p1, p, BN_value_one ());
    q = BN_generate_prime (((void*)0), bits / 2, 0, four, three, ((void*)0), ((void*)0));
    assert (q);
    BN_sub (q1, q, BN_value_one ());

    BN_rshift1 (p1, p1);
    BN_rshift1 (q1, q1);
    BN_gcd (t, p1, q1, self->ctx);
    BN_free (p1);
    BN_free (q1);

    if (BN_is_one (t)) {
      break;
    }
    vkprintf (2, "gcd ((p-1)/2, (q-1)/2) isn't 1.\n");
    BN_free (p);
    p = ((void*)0);
    BN_free (q);
    q = ((void*)0);
  }

  BN_free (three);
  BN_free (four);

  self->m = BN_new ();
  BN_mul (self->m, p, q, self->ctx);
  BN_clear_free (p);
  BN_clear_free (q);
  self->r = BN_RECP_CTX_new ();
  assert (1 == BN_RECP_CTX_set (self->r, self->m, self->ctx));

  self->mlen = BN_num_bytes (self->m);
  self->tmp = calloc ((self->mlen + 3) & -4, 1);
  assert (self->tmp);
  self->x = BN_new ();
  BN_set_word (self->x, 239);
  BN_gcd (t, self->x, self->m, self->ctx);
  assert (BN_is_one (t));
  BN_free (t);
  self->i = 0;

  return 0;
}
