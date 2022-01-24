#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ indexesIBO; scalar_t__ vertexesVBO; scalar_t__ vao; } ;
typedef  TYPE_1__ vao_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_5__ {int numVaos; TYPE_1__** vaos; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRINT_ALL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 TYPE_3__ ri ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ tr ; 

void FUNC4(void)
{
	int             i;
	vao_t          *vao;

	ri.Printf(PRINT_ALL, "------- R_ShutdownVaos -------\n");

	FUNC0();

	for(i = 0; i < tr.numVaos; i++)
	{
		vao = tr.vaos[i];

		if(vao->vao)
			FUNC2(1, &vao->vao);

		if(vao->vertexesVBO)
		{
			FUNC1(1, &vao->vertexesVBO);
		}

		if(vao->indexesIBO)
		{
			FUNC1(1, &vao->indexesIBO);
		}
	}

	tr.numVaos = 0;
}