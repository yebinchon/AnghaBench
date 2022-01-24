#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scratch ;
typedef  int /*<<< orphan*/  secp256k1_scalar ;
typedef  int /*<<< orphan*/  secp256k1_gej ;
typedef  int /*<<< orphan*/  secp256k1_ge ;
struct TYPE_5__ {int /*<<< orphan*/  error_callback; int /*<<< orphan*/  ecmult_ctx; } ;
typedef  TYPE_1__ secp256k1_context ;
struct TYPE_6__ {int /*<<< orphan*/ * pt; int /*<<< orphan*/ * sc; } ;
typedef  TYPE_2__ ecmult_multi_data ;

/* Variables and functions */
 int /*<<< orphan*/  ecmult_multi_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(const secp256k1_context *ctx, const secp256k1_ge *group, int order) {
    int i, j, k, x, y;
    secp256k1_scratch *scratch = FUNC3(&ctx->error_callback, 4096);
    for (i = 0; i < order; i++) {
        for (j = 0; j < order; j++) {
            for (k = 0; k < order; k++) {
                for (x = 0; x < order; x++) {
                    for (y = 0; y < order; y++) {
                        secp256k1_gej tmp;
                        secp256k1_scalar g_sc;
                        ecmult_multi_data data;

                        FUNC2(&data.sc[0], i);
                        FUNC2(&data.sc[1], j);
                        FUNC2(&g_sc, k);
                        data.pt[0] = group[x];
                        data.pt[1] = group[y];

                        FUNC1(&ctx->error_callback, &ctx->ecmult_ctx, scratch, &tmp, &g_sc, ecmult_multi_callback, &data, 2);
                        FUNC0(&group[(i * x + j * y + k) % order], &tmp);
                    }
                }
            }
        }
    }
    FUNC4(&ctx->error_callback, scratch);
}