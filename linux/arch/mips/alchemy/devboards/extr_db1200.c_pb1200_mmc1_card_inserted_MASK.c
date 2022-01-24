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

/* Variables and functions */
 int BCSR_INT_SD1INSERT ; 
 int /*<<< orphan*/  BCSR_SIGSTAT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *mmc_host)
{
	return (FUNC0(BCSR_SIGSTAT) & BCSR_INT_SD1INSERT) ? 1 : 0;
}