#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct x509_parse_context {TYPE_1__* cert; } ;
struct TYPE_2__ {int /*<<< orphan*/  valid_from; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,size_t,unsigned char,void const*,size_t) ; 

int FUNC1(void *context, size_t hdrlen,
			 unsigned char tag,
			 const void *value, size_t vlen)
{
	struct x509_parse_context *ctx = context;
	return FUNC0(&ctx->cert->valid_from, hdrlen, tag, value, vlen);
}