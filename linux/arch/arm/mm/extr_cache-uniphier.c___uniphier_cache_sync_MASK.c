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
struct uniphier_cache_data {scalar_t__ op_base; } ;

/* Variables and functions */
 scalar_t__ UNIPHIER_SSCOPE ; 
 int /*<<< orphan*/  UNIPHIER_SSCOPE_CM_SYNC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct uniphier_cache_data *data)
{
	/* This sequence need not be atomic.  Do not disable IRQ. */
	FUNC1(UNIPHIER_SSCOPE_CM_SYNC,
		       data->op_base + UNIPHIER_SSCOPE);
	/* need a read back to confirm */
	FUNC0(data->op_base + UNIPHIER_SSCOPE);
}