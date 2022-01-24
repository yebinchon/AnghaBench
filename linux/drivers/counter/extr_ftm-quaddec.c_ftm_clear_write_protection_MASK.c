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
typedef  int uint32_t ;
struct ftm_quaddec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ftm_quaddec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FTM_FMS ; 
 int FTM_FMS_WPEN ; 
 int /*<<< orphan*/  FTM_MODE ; 
 int /*<<< orphan*/  FTM_MODE_WPDIS ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_quaddec*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(struct ftm_quaddec *ftm)
{
	uint32_t flag;

	/* First see if it is enabled */
	FUNC1(ftm, FTM_FMS, &flag);

	if (flag & FTM_FMS_WPEN)
		FUNC0(ftm, FTM_MODE, FTM_MODE_WPDIS, 1);
}