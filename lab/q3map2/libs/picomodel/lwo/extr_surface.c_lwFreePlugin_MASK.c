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
struct TYPE_4__ {struct TYPE_4__* data; struct TYPE_4__* name; struct TYPE_4__* ord; } ;
typedef  TYPE_1__ lwPlugin ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void FUNC1( lwPlugin *p ){
	if ( p ) {
		if ( p->ord ) {
			FUNC0( p->ord );
		}
		if ( p->name ) {
			FUNC0( p->name );
		}
		if ( p->data ) {
			FUNC0( p->data );
		}
		FUNC0( p );
	}
}