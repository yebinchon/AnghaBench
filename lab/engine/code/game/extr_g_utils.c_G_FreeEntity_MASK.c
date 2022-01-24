#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* classname; int /*<<< orphan*/  inuse; int /*<<< orphan*/  freetime; scalar_t__ neverFree; } ;
typedef  TYPE_1__ gentity_t ;
struct TYPE_7__ {int /*<<< orphan*/  time; } ;

/* Variables and functions */
 TYPE_4__ level ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2( gentity_t *ed ) {
	FUNC1 (ed);		// unlink from world

	if ( ed->neverFree ) {
		return;
	}

	FUNC0 (ed, 0, sizeof(*ed));
	ed->classname = "freed";
	ed->freetime = level.time;
	ed->inuse = qfalse;
}