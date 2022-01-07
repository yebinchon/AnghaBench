
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int * h; } ;
typedef TYPE_1__ md5_ctx_t ;


 int md5_final (TYPE_1__*) ;
 int md5_init (TYPE_1__*) ;
 int md5_update (TYPE_1__*,int const*,int const) ;

__attribute__((used)) static void md5_complete_no_limit (u32 digest[4], const u32 *plain, const u32 plain_len)
{


  md5_ctx_t md5_ctx;

  md5_init (&md5_ctx);
  md5_update (&md5_ctx, plain, plain_len);
  md5_final (&md5_ctx);

  digest[0] = md5_ctx.h[0];
  digest[1] = md5_ctx.h[1];
  digest[2] = md5_ctx.h[2];
  digest[3] = md5_ctx.h[3];
}
