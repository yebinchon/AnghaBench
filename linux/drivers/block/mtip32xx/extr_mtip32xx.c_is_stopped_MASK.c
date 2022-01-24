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
struct request {int dummy; } ;
struct driver_data {int dd_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_DDF_OVER_TEMP_BIT ; 
 int /*<<< orphan*/  MTIP_DDF_REBUILD_FAILED_BIT ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 int /*<<< orphan*/  MTIP_DDF_SEC_LOCK_BIT ; 
 int MTIP_DDF_STOP_IO ; 
 int /*<<< orphan*/  MTIP_DDF_WRITE_PROTECT_BIT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static inline bool FUNC3(struct driver_data *dd, struct request *rq)
{
	if (FUNC0(!(dd->dd_flag & MTIP_DDF_STOP_IO)))
		return false;

	if (FUNC2(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag))
		return true;
	if (FUNC2(MTIP_DDF_OVER_TEMP_BIT, &dd->dd_flag))
		return true;
	if (FUNC2(MTIP_DDF_WRITE_PROTECT_BIT, &dd->dd_flag) &&
	    FUNC1(rq))
		return true;
	if (FUNC2(MTIP_DDF_SEC_LOCK_BIT, &dd->dd_flag))
		return true;
	if (FUNC2(MTIP_DDF_REBUILD_FAILED_BIT, &dd->dd_flag))
		return true;

	return false;
}