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
 int /*<<< orphan*/  GPCR ; 
 int /*<<< orphan*/  GPIO_GPIO25 ; 
 int /*<<< orphan*/  jornada_ssp_flags ; 
 int /*<<< orphan*/  jornada_ssp_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(void)
{
	FUNC0(&jornada_ssp_lock, jornada_ssp_flags);
	GPCR = GPIO_GPIO25;
	FUNC1(50);
	return;
}