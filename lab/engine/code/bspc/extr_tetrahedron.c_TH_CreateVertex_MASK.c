#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_4__ {scalar_t__ usercount; int /*<<< orphan*/  v; } ;
struct TYPE_3__ {int numvertexes; TYPE_2__* vertexes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_TH_VERTEXES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ thworld ; 

int FUNC3(vec3_t v)
{
	if (thworld.numvertexes == 0) thworld.numvertexes = 1;
	if (thworld.numvertexes >= MAX_TH_VERTEXES)
		FUNC0("MAX_TH_VERTEXES");
	FUNC2(v, thworld.vertexes[thworld.numvertexes].v);
	thworld.vertexes[thworld.numvertexes].usercount = 0;
	FUNC1(&thworld.vertexes[thworld.numvertexes]);
	thworld.numvertexes++;
	return thworld.numvertexes-1;
}