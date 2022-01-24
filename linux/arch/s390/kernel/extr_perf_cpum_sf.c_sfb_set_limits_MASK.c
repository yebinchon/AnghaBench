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
struct hws_qsi_info_block {int /*<<< orphan*/  bsdes; int /*<<< orphan*/  dsdes; } ;
typedef  int /*<<< orphan*/  si ;

/* Variables and functions */
 unsigned long CPUM_SF_MAX_SDB ; 
 unsigned long CPUM_SF_MIN_SDB ; 
 int /*<<< orphan*/  CPUM_SF_SDB_DIAG_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hws_qsi_info_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hws_qsi_info_block*) ; 

__attribute__((used)) static void FUNC3(unsigned long min, unsigned long max)
{
	struct hws_qsi_info_block si;

	CPUM_SF_MIN_SDB = min;
	CPUM_SF_MAX_SDB = max;

	FUNC1(&si, 0, sizeof(si));
	if (!FUNC2(&si))
		CPUM_SF_SDB_DIAG_FACTOR = FUNC0(si.dsdes, si.bsdes);
}