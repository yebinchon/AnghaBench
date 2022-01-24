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
typedef  int /*<<< orphan*/  glconfig_t ;
struct TYPE_2__ {int viewCluster; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  glConfig ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__ tr ; 

void FUNC4( glconfig_t *glconfigOut ) {

	FUNC2();

	*glconfigOut = glConfig;

	FUNC3();

	tr.viewCluster = -1;		// force markleafs to regenerate
	FUNC1();
	FUNC0();

	tr.registered = qtrue;
}