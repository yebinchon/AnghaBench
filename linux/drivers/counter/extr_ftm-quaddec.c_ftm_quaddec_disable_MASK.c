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
 int /*<<< orphan*/  FTM_MODE ; 
 int /*<<< orphan*/  FTM_QDCTRL ; 
 int /*<<< orphan*/  FUNC0 (struct ftm_quaddec*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_quaddec*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftm_quaddec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *ftm)
{
	struct ftm_quaddec *ftm_qua = ftm;

	FUNC0(ftm_qua);
	FUNC2(ftm_qua, FTM_MODE, 0);
	FUNC2(ftm_qua, FTM_QDCTRL, 0);
	/*
	 * This is enough to disable the counter. No clock has been
	 * selected by writing to FTM_SC in init()
	 */
	FUNC1(ftm_qua);
}