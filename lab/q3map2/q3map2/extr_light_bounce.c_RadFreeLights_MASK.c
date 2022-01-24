#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * w; struct TYPE_4__* next; } ;
typedef  TYPE_1__ light_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* lights ; 
 scalar_t__ numLights ; 

void FUNC2( void ){
	light_t     *light, *next;


	/* delete lights */
	for ( light = lights; light; light = next )
	{
		next = light->next;
		if ( light->w != NULL ) {
			FUNC0( light->w );
		}
		FUNC1( light );
	}
	numLights = 0;
	lights = NULL;
}