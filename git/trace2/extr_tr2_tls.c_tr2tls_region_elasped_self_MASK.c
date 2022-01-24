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
typedef  scalar_t__ uint64_t ;
struct tr2tls_thread_ctx {int nr_open_regions; scalar_t__* array_us_start; } ;

/* Variables and functions */
 struct tr2tls_thread_ctx* FUNC0 () ; 

uint64_t FUNC1(uint64_t us)
{
	struct tr2tls_thread_ctx *ctx;
	uint64_t us_start;

	ctx = FUNC0();
	if (!ctx->nr_open_regions)
		return 0;

	us_start = ctx->array_us_start[ctx->nr_open_regions - 1];

	return us - us_start;
}