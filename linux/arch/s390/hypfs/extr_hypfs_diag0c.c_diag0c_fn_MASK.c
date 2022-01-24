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
struct TYPE_2__ {int /*<<< orphan*/  (* diag0c ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DIAG_STAT_X00C ; 
 TYPE_1__ diag_dma_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	FUNC0(DIAG_STAT_X00C);
	diag_dma_ops.diag0c(((void **) data)[FUNC1()]);
}