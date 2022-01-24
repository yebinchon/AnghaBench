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
struct pd_unit {int changed; } ;
typedef  enum action { ____Placeholder_action } action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ERR_MC ; 
 int /*<<< orphan*/  IDE_ACKCHANGE ; 
 int /*<<< orphan*/  IDE_READ_VRFY ; 
 int Ok ; 
 int STAT_ERR ; 
 int /*<<< orphan*/  STAT_READY ; 
 int /*<<< orphan*/  FUNC1 (struct pd_unit*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pd_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum action FUNC3(struct pd_unit *disk)
{
	int r = FUNC2(disk, STAT_READY, FUNC0("before media_check"));
	if (!(r & STAT_ERR)) {
		FUNC1(disk, 1, 1, 0, 0, 0, IDE_READ_VRFY);
		r = FUNC2(disk, STAT_READY, FUNC0("RDY after READ_VRFY"));
	} else
		disk->changed = 1;	/* say changed if other error */
	if (r & ERR_MC) {
		disk->changed = 1;
		FUNC1(disk, 1, 0, 0, 0, 0, IDE_ACKCHANGE);
		FUNC2(disk, STAT_READY, FUNC0("RDY after ACKCHANGE"));
		FUNC1(disk, 1, 1, 0, 0, 0, IDE_READ_VRFY);
		r = FUNC2(disk, STAT_READY, FUNC0("RDY after VRFY"));
	}
	return Ok;
}