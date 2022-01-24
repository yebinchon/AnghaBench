#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct chacha20poly1305_context_t {int /*<<< orphan*/  poly; int /*<<< orphan*/  textlen; int /*<<< orphan*/  aadlen; } ;
typedef  int /*<<< orphan*/  lenbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct chacha20poly1305_context_t *ctx, uint8_t *tag)
{
    uint8_t lenbuf[16];

    FUNC2(&ctx->poly, ctx->textlen);

    FUNC3(ctx->aadlen, lenbuf);
    FUNC3(ctx->textlen, lenbuf + 8);
    FUNC1(&ctx->poly, lenbuf, sizeof(lenbuf));

    FUNC0(&ctx->poly, tag);
}