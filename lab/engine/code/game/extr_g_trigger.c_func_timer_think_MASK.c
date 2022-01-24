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
struct TYPE_5__ {int wait; int random; scalar_t__ nextthink; int /*<<< orphan*/  activator; } ;
typedef  TYPE_1__ gentity_t ;
struct TYPE_6__ {scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 TYPE_2__ level ; 

void FUNC2( gentity_t *self ) {
	FUNC0 (self, self->activator);
	// set time before next firing
	self->nextthink = level.time + 1000 * ( self->wait + FUNC1() * self->random );
}