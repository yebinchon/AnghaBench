
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__** A; } ;
typedef TYPE_2__ cf_sha3_context ;
struct TYPE_7__ {int member_0; } ;
struct TYPE_9__ {int odd; int evn; TYPE_1__ member_0; } ;
typedef TYPE_3__ cf_sha3_bi ;
struct TYPE_10__ {int odd; int evn; } ;


 size_t MOD5 (int) ;
 int ** rotation_constants ;
 int rotl_bi_n (TYPE_3__*,TYPE_5__*,int ) ;

__attribute__((used)) static void rho_pi_chi(cf_sha3_context *ctx)
{
  cf_sha3_bi B[5][5] = { { { 0 } } };

  for (int x = 0; x < 5; x++)
    for (int y = 0; y < 5; y++)
      rotl_bi_n(&B[y][MOD5(2 * x + 3 * y)], &ctx->A[x][y], rotation_constants[y][x]);

  for (int x = 0; x < 5; x++)
  {
    unsigned x1 = MOD5(x + 1);
    unsigned x2 = MOD5(x + 2);

    for (int y = 0; y < 5; y++)
    {
      ctx->A[x][y].odd = B[x][y].odd ^ ((~ B[x1][y].odd) & B[x2][y].odd);
      ctx->A[x][y].evn = B[x][y].evn ^ ((~ B[x1][y].evn) & B[x2][y].evn);
    }
  }
}
