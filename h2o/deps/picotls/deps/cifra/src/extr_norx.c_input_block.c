
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int type; int ctx; } ;
typedef TYPE_1__ blockctx ;


 int input_block_final (void*,int const*) ;
 int switch_domain (int ,int ) ;

__attribute__((used)) static void input_block(void *vctx, const uint8_t *data)
{

  blockctx *bctx = vctx;
  input_block_final(vctx, data);
  switch_domain(bctx->ctx, bctx->type);
}
