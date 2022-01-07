
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__** A; } ;
typedef TYPE_2__ cf_sha3_context ;
struct TYPE_9__ {int evn; int odd; } ;
struct TYPE_7__ {int evn; int odd; } ;


 int rho_pi_chi (TYPE_2__*) ;
 TYPE_4__* round_constants ;
 int theta (TYPE_2__*) ;

__attribute__((used)) static void permute(cf_sha3_context *ctx)
{
  for (int r = 0; r < 24; r++)
  {
    theta(ctx);
    rho_pi_chi(ctx);


    ctx->A[0][0].odd ^= round_constants[r].odd;
    ctx->A[0][0].evn ^= round_constants[r].evn;
  }
}
