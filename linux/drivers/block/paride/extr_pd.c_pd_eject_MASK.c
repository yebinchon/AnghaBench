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
struct pd_unit {int dummy; } ;
typedef  enum action { ____Placeholder_action } action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IDE_DOORUNLOCK ; 
 int /*<<< orphan*/  IDE_EJECT ; 
 int Ok ; 
 int /*<<< orphan*/  FUNC1 (struct pd_unit*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pd_unit*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum action FUNC3(struct pd_unit *disk)
{
	FUNC2(disk, 0, FUNC0("before unlock on eject"));
	FUNC1(disk, 1, 0, 0, 0, 0, IDE_DOORUNLOCK);
	FUNC2(disk, 0, FUNC0("after unlock on eject"));
	FUNC2(disk, 0, FUNC0("before eject"));
	FUNC1(disk, 0, 0, 0, 0, 0, IDE_EJECT);
	FUNC2(disk, 0, FUNC0("after eject"));
	return Ok;
}