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
typedef  int /*<<< orphan*/  nvram_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  NVRAM_RW ; 
 int /*<<< orphan*/  NVRAM_STAGING ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static nvram_handle_t * FUNC3(void)
{
	if( FUNC0() != NULL || FUNC2() == 0 )
		return FUNC1(NVRAM_STAGING, NVRAM_RW);

	return NULL;
}