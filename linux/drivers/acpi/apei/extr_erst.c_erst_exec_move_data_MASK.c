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
typedef  scalar_t__ u64 ;
struct apei_exec_context {int /*<<< orphan*/  var2; scalar_t__ dst_base; scalar_t__ src_base; } ;
struct acpi_whea_header {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int FUNC0 (struct acpi_whea_header*,scalar_t__*) ; 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct apei_exec_context *ctx,
			       struct acpi_whea_header *entry)
{
	int rc;
	u64 offset;
	void *src, *dst;

	/* ioremap does not work in interrupt context */
	if (FUNC1()) {
		FUNC5("MOVE_DATA can not be used in interrupt context.\n");
		return -EBUSY;
	}

	rc = FUNC0(entry, &offset);
	if (rc)
		return rc;

	src = FUNC2(ctx->src_base + offset, ctx->var2);
	if (!src)
		return -ENOMEM;
	dst = FUNC2(ctx->dst_base + offset, ctx->var2);
	if (!dst) {
		FUNC3(src);
		return -ENOMEM;
	}

	FUNC4(dst, src, ctx->var2);

	FUNC3(src);
	FUNC3(dst);

	return 0;
}