#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {float phys_gravity; } ;

/* Variables and functions */
 TYPE_1__ aassettings ; 
 int FUNC0 (float) ; 
 float FUNC1 (int) ; 

float FUNC2(float distance)
{
	float t, delta, gravity;

	gravity = aassettings.phys_gravity;
	t = FUNC1(FUNC0(distance) * 2 / gravity);
	delta = t * gravity;
	return delta * delta * 0.0001;
}