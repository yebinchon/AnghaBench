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
struct object_directory {int /*<<< orphan*/  loose_objects_subdir_seen; int /*<<< orphan*/ * loose_objects_cache; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct object_directory *odb)
{
	int i;

	for (i = 0; i < FUNC0(odb->loose_objects_cache); i++)
		FUNC2(&odb->loose_objects_cache[i]);
	FUNC1(&odb->loose_objects_subdir_seen, 0,
	       sizeof(odb->loose_objects_subdir_seen));
}