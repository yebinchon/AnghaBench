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
struct TYPE_2__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  ID_ADD 129 
#define  ID_BACK 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2( void* ptr, int event )
{
	switch (((menucommon_s*)ptr)->id)
	{
		case ID_ADD:
			if (event != QM_ACTIVATED)
				break;
		
			FUNC0();
			FUNC1();
			break;

		case ID_BACK:
			if (event != QM_ACTIVATED)
				break;

			FUNC1();
			break;
	}
}