
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int e_Y0; int gh; } ;
typedef TYPE_1__ uint8_t ;
typedef TYPE_1__ cf_gcm_ctx ;


 int assert (int) ;
 int ghash_final (int *,TYPE_1__*) ;
 int mem_clean (TYPE_1__*,int) ;
 int xor_bb (TYPE_1__*,TYPE_1__*,int ,size_t) ;

void cf_gcm_encrypt_final(cf_gcm_ctx *gcmctx, uint8_t *tag, size_t ntag)
{

  uint8_t full_tag[16] = { 0 };
  ghash_final(&gcmctx->gh, full_tag);

  assert(ntag > 1 && ntag <= 16);
  xor_bb(tag, full_tag, gcmctx->e_Y0, ntag);

  mem_clean(full_tag, sizeof full_tag);
  mem_clean(gcmctx, sizeof *gcmctx);
}
