
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int * BN_CTX_get (int *) ;
 int BN_CTX_start (int *) ;
 int BN_clear_free (int *) ;
 int BN_init (int *) ;
 scalar_t__ BN_is_bit_set (int const*,int) ;
 int BN_mod (int *,int const*,int const*,int *) ;
 int BN_mod_mul (int *,int *,int *,int const*,int *) ;
 int BN_num_bits (int const*) ;
 int BN_one (int *) ;
 int BN_window_bits_for_exponent_size (int) ;
 int TABLE_SIZE ;

int BN_mod_exp_simple(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
      const BIGNUM *m, BN_CTX *ctx)
 {
 int i,j,bits,ret=0,wstart,wend,window,wvalue,ts=0;
 int start=1;
 BIGNUM *d;
 BIGNUM val[TABLE_SIZE];

 bits=BN_num_bits(p);

 if (bits == 0)
  {
  BN_one(r);
  return(1);
  }

 BN_CTX_start(ctx);
 if ((d = BN_CTX_get(ctx)) == ((void*)0)) goto err;

 BN_init(&(val[0]));
 ts=1;
 if (!BN_mod(&(val[0]),a,m,ctx)) goto err;

 window = BN_window_bits_for_exponent_size(bits);
 if (window > 1)
  {
  if (!BN_mod_mul(d,&(val[0]),&(val[0]),m,ctx))
   goto err;
  j=1<<(window-1);
  for (i=1; i<j; i++)
   {
   BN_init(&(val[i]));
   if (!BN_mod_mul(&(val[i]),&(val[i-1]),d,m,ctx))
    goto err;
   }
  ts=i;
  }

 start=1;


 wvalue=0;
 wstart=bits-1;
 wend=0;

 if (!BN_one(r)) goto err;

 for (;;)
  {
  if (BN_is_bit_set(p,wstart) == 0)
   {
   if (!start)
    if (!BN_mod_mul(r,r,r,m,ctx))
    goto err;
   if (wstart == 0) break;
   wstart--;
   continue;
   }




  j=wstart;
  wvalue=1;
  wend=0;
  for (i=1; i<window; i++)
   {
   if (wstart-i < 0) break;
   if (BN_is_bit_set(p,wstart-i))
    {
    wvalue<<=(i-wend);
    wvalue|=1;
    wend=i;
    }
   }


  j=wend+1;

  if (!start)
   for (i=0; i<j; i++)
    {
    if (!BN_mod_mul(r,r,r,m,ctx))
     goto err;
    }


  if (!BN_mod_mul(r,r,&(val[wvalue>>1]),m,ctx))
   goto err;


  wstart-=wend+1;
  wvalue=0;
  start=0;
  if (wstart < 0) break;
  }
 ret=1;
err:
 BN_CTX_end(ctx);
 for (i=0; i<ts; i++)
  BN_clear_free(&(val[i]));
 return(ret);
 }
