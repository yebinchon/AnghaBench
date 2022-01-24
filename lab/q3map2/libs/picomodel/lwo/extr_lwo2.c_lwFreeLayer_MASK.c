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
struct TYPE_4__ {int /*<<< orphan*/  vmap; int /*<<< orphan*/  polygon; int /*<<< orphan*/  point; struct TYPE_4__* name; } ;
typedef  TYPE_1__ lwLayer ;
typedef  int /*<<< orphan*/  ListFreeFunc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ lwFreeVMap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4( lwLayer *layer ){
	if ( layer ) {
		if ( layer->name ) {
			FUNC0( layer->name );
		}
		FUNC1( &layer->point );
		FUNC2( &layer->polygon );
		FUNC3( layer->vmap, (ListFreeFunc) lwFreeVMap );
		FUNC0( layer );
	}
}