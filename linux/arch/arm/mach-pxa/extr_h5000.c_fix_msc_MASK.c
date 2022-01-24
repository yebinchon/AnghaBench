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
 int /*<<< orphan*/  MDREFR ; 
 int /*<<< orphan*/  MSC0 ; 
 int /*<<< orphan*/  MSC1 ; 
 int /*<<< orphan*/  MSC2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	FUNC1(0x129c24f2, MSC0);
	FUNC1(0x7ff424fa, MSC1);
	FUNC1(0x7ff47ff4, MSC2);

	FUNC1(FUNC0(MDREFR) | 0x02080000, MDREFR);
}