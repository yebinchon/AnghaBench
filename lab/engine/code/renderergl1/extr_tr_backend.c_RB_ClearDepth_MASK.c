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
typedef  int /*<<< orphan*/  clearDepthCommand_t ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {scalar_t__ numIndexes; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* r_showImages ; 
 TYPE_1__ tess ; 

const void *FUNC3(const void *data)
{
	const clearDepthCommand_t *cmd = data;
	
	if(tess.numIndexes)
		FUNC0();

	// texture swapping test
	if (r_showImages->integer)
		FUNC1();

	FUNC2(GL_DEPTH_BUFFER_BIT);
	
	return (const void *)(cmd + 1);
}