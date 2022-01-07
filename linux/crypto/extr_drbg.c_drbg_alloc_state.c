
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drbg_state {int fips_primed; TYPE_2__* d_ops; void* prev; TYPE_1__* core; void* scratchpadbuf; void* scratchpad; void* Cbuf; void* C; void* Vbuf; void* V; } ;
struct TYPE_6__ {int (* crypto_init ) (struct drbg_state*) ;int (* crypto_fini ) (struct drbg_state*) ;} ;
struct TYPE_5__ {int flags; } ;


 int CONFIG_CRYPTO_FIPS ;



 int DRBG_TYPE_MASK ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 void* PTR_ALIGN (void*,int) ;
 int drbg_blocklen (struct drbg_state*) ;
 TYPE_2__ drbg_ctr_ops ;
 int drbg_dealloc_state (struct drbg_state*) ;
 TYPE_2__ drbg_hash_ops ;
 TYPE_2__ drbg_hmac_ops ;
 unsigned int drbg_sec_strength (int const) ;
 int drbg_statelen (struct drbg_state*) ;
 void* kmalloc (int,int ) ;
 void* kzalloc (unsigned int,int ) ;
 int stub1 (struct drbg_state*) ;
 int stub2 (struct drbg_state*) ;

__attribute__((used)) static inline int drbg_alloc_state(struct drbg_state *drbg)
{
 int ret = -ENOMEM;
 unsigned int sb_size = 0;

 switch (drbg->core->flags & DRBG_TYPE_MASK) {
 default:
  ret = -EOPNOTSUPP;
  goto err;
 }

 ret = drbg->d_ops->crypto_init(drbg);
 if (ret < 0)
  goto err;

 drbg->Vbuf = kmalloc(drbg_statelen(drbg) + ret, GFP_KERNEL);
 if (!drbg->Vbuf) {
  ret = -ENOMEM;
  goto fini;
 }
 drbg->V = PTR_ALIGN(drbg->Vbuf, ret + 1);
 drbg->Cbuf = kmalloc(drbg_statelen(drbg) + ret, GFP_KERNEL);
 if (!drbg->Cbuf) {
  ret = -ENOMEM;
  goto fini;
 }
 drbg->C = PTR_ALIGN(drbg->Cbuf, ret + 1);

 if (drbg->core->flags & 128)
  sb_size = 0;
 else if (drbg->core->flags & 130)
  sb_size = drbg_statelen(drbg) + drbg_blocklen(drbg) +
     drbg_statelen(drbg) +
     drbg_blocklen(drbg) +
     drbg_blocklen(drbg) +
     drbg_statelen(drbg) + drbg_blocklen(drbg);
 else
  sb_size = drbg_statelen(drbg) + drbg_blocklen(drbg);

 if (0 < sb_size) {
  drbg->scratchpadbuf = kzalloc(sb_size + ret, GFP_KERNEL);
  if (!drbg->scratchpadbuf) {
   ret = -ENOMEM;
   goto fini;
  }
  drbg->scratchpad = PTR_ALIGN(drbg->scratchpadbuf, ret + 1);
 }

 if (IS_ENABLED(CONFIG_CRYPTO_FIPS)) {
  drbg->prev = kzalloc(drbg_sec_strength(drbg->core->flags),
         GFP_KERNEL);
  if (!drbg->prev)
   goto fini;
  drbg->fips_primed = 0;
 }

 return 0;

fini:
 drbg->d_ops->crypto_fini(drbg);
err:
 drbg_dealloc_state(drbg);
 return ret;
}
