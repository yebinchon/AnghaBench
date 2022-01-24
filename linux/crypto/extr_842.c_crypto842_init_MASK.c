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
struct crypto_tfm {int dummy; } ;
struct crypto842_ctx {int /*<<< orphan*/  wmem; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct crypto842_ctx* FUNC2 (struct crypto_tfm*) ; 

__attribute__((used)) static int FUNC3(struct crypto_tfm *tfm)
{
	struct crypto842_ctx *ctx = FUNC2(tfm);

	ctx->wmem = FUNC1(NULL);
	if (FUNC0(ctx->wmem))
		return -ENOMEM;

	return 0;
}