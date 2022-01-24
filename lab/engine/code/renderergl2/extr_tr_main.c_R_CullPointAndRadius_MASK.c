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
struct TYPE_3__ {int flags; int /*<<< orphan*/  frustum; } ;
struct TYPE_4__ {TYPE_1__ viewParms; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const,float,int /*<<< orphan*/ ,int) ; 
 int VPF_FARPLANEFRUSTUM ; 
 TYPE_2__ tr ; 

int FUNC1( const vec3_t pt, float radius )
{
	return FUNC0(pt, radius, tr.viewParms.frustum, (tr.viewParms.flags & VPF_FARPLANEFRUSTUM) ? 5 : 4);
}