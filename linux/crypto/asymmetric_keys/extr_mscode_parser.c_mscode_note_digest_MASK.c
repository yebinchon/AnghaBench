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
struct pefile_context {size_t digest_len; int /*<<< orphan*/  digest; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void const*,size_t,int /*<<< orphan*/ ) ; 

int FUNC1(void *context, size_t hdrlen,
		       unsigned char tag,
		       const void *value, size_t vlen)
{
	struct pefile_context *ctx = context;

	ctx->digest = FUNC0(value, vlen, GFP_KERNEL);
	if (!ctx->digest)
		return -ENOMEM;

	ctx->digest_len = vlen;

	return 0;
}