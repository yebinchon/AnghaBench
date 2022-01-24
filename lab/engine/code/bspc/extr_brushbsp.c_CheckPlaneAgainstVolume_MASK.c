#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_3__ {int /*<<< orphan*/  volume; } ;
typedef  TYPE_1__ node_t ;
typedef  int /*<<< orphan*/  bspbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 

qboolean FUNC2 (int pnum, node_t *node)
{
	bspbrush_t	*front, *back;
	qboolean	good;

	FUNC1 (node->volume, pnum, &front, &back);

	good = (front && back);

	if (front) FUNC0 (front);
	if (back) FUNC0 (back);

	return good;
}