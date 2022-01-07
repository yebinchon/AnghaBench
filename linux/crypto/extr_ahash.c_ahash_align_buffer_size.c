
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_tfm_ctx_alignment () ;

__attribute__((used)) static inline unsigned int ahash_align_buffer_size(unsigned len,
         unsigned long mask)
{
 return len + (mask & ~(crypto_tfm_ctx_alignment() - 1));
}
