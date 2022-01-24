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
struct ecrdsa_ctx {int /*<<< orphan*/  curve_oid; int /*<<< orphan*/  curve; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*,size_t) ; 

int FUNC2(void *context, size_t hdrlen, unsigned char tag,
		       const void *value, size_t vlen)
{
	struct ecrdsa_ctx *ctx = context;

	ctx->curve_oid = FUNC1(value, vlen);
	if (!ctx->curve_oid)
		return -EINVAL;
	ctx->curve = FUNC0(ctx->curve_oid);
	return 0;
}