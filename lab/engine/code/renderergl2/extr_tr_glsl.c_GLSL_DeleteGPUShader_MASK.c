#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ uniformBuffer; scalar_t__ program; scalar_t__ fragmentShader; scalar_t__ vertexShader; } ;
typedef  TYPE_1__ shaderProgram_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* Free ) (scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 TYPE_2__ ri ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(shaderProgram_t *program)
{
	if(program->program)
	{
		if (program->vertexShader)
		{
			FUNC3(program->program, program->vertexShader);
			FUNC2(program->vertexShader);
		}

		if (program->fragmentShader)
		{
			FUNC3(program->program, program->fragmentShader);
			FUNC2(program->fragmentShader);
		}

		FUNC1(program->program);

		if (program->uniformBuffer)
		{
			ri.Free(program->uniformBuffer);
		}

		FUNC0(program, 0, sizeof(*program));
	}
}