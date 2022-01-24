#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int maxColorAttachments; int /*<<< orphan*/  framebufferObject; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_6__ {int numFBOs; TYPE_1__** fbos; } ;
struct TYPE_5__ {scalar_t__ frameBuffer; scalar_t__ stencilBuffer; scalar_t__ depthBuffer; scalar_t__* colorBuffers; } ;
typedef  TYPE_1__ FBO_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 TYPE_4__ glRefConfig ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 TYPE_3__ ri ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ tr ; 

void FUNC4(void)
{
	int             i, j;
	FBO_t          *fbo;

	ri.Printf(PRINT_ALL, "------- FBO_Shutdown -------\n");

	if(!glRefConfig.framebufferObject)
		return;

	FUNC0(NULL);

	for(i = 0; i < tr.numFBOs; i++)
	{
		fbo = tr.fbos[i];

		for(j = 0; j < glRefConfig.maxColorAttachments; j++)
		{
			if(fbo->colorBuffers[j])
				FUNC2(1, &fbo->colorBuffers[j]);
		}

		if(fbo->depthBuffer)
			FUNC2(1, &fbo->depthBuffer);

		if(fbo->stencilBuffer)
			FUNC2(1, &fbo->stencilBuffer);

		if(fbo->frameBuffer)
			FUNC1(1, &fbo->frameBuffer);
	}
}