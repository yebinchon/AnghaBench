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
struct work_struct {int dummy; } ;
struct pseries_hp_work {struct pseries_hp_errorlog* errlog; } ;
struct pseries_hp_errorlog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pseries_hp_errorlog*) ; 
 struct pseries_hp_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct pseries_hp_errorlog* FUNC3 (struct pseries_hp_errorlog*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pseries_hp_work_fn ; 
 int /*<<< orphan*/  pseries_hp_wq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct work_struct*) ; 

void FUNC5(struct pseries_hp_errorlog *hp_errlog)
{
	struct pseries_hp_work *work;
	struct pseries_hp_errorlog *hp_errlog_copy;

	hp_errlog_copy = FUNC3(hp_errlog, sizeof(*hp_errlog), GFP_ATOMIC);
	if (!hp_errlog_copy)
		return;

	work = FUNC2(sizeof(struct pseries_hp_work), GFP_ATOMIC);
	if (work) {
		FUNC0((struct work_struct *)work, pseries_hp_work_fn);
		work->errlog = hp_errlog_copy;
		FUNC4(pseries_hp_wq, (struct work_struct *)work);
	} else {
		FUNC1(hp_errlog_copy);
	}
}