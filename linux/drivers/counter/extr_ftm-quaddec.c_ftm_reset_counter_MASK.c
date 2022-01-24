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
struct ftm_quaddec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTM_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct ftm_quaddec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ftm_quaddec *ftm)
{
	/* Reset hardware counter to CNTIN */
	FUNC0(ftm, FTM_CNT, 0x0);
}