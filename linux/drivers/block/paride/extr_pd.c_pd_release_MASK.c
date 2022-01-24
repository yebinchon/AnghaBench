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
struct pd_unit {scalar_t__ removable; int /*<<< orphan*/  access; } ;
struct gendisk {struct pd_unit* private_data; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pd_door_unlock ; 
 int /*<<< orphan*/  pd_mutex ; 
 int /*<<< orphan*/  FUNC2 (struct pd_unit*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gendisk *p, fmode_t mode)
{
	struct pd_unit *disk = p->private_data;

	FUNC0(&pd_mutex);
	if (!--disk->access && disk->removable)
		FUNC2(disk, pd_door_unlock);
	FUNC1(&pd_mutex);
}