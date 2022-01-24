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
struct tr2tls_thread_ctx {struct tr2tls_thread_ctx* array_us_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tr2tls_thread_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tr2tls_thread_ctx* FUNC2 () ; 
 int /*<<< orphan*/  tr2tls_key ; 

void FUNC3(void)
{
	struct tr2tls_thread_ctx *ctx;

	ctx = FUNC2();

	FUNC1(tr2tls_key, NULL);

	FUNC0(ctx->array_us_start);
	FUNC0(ctx);
}