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
struct TYPE_5__ {void* value; void* key; struct TYPE_5__* next; } ;
typedef  TYPE_1__ epair_t ;
struct TYPE_6__ {TYPE_1__* epairs; } ;
typedef  TYPE_2__ entity_t ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*) ; 

void    FUNC4( entity_t *ent, const char *key, const char *value ) {
	epair_t *ep;

	for ( ep = ent->epairs ; ep ; ep = ep->next ) {
		if ( !FUNC3( ep->key, key ) ) {
			FUNC1( ep->value );
			ep->value = FUNC0( value );
			return;
		}
	}
	ep = FUNC2( sizeof( *ep ) );
	ep->next = ent->epairs;
	ent->epairs = ep;
	ep->key = FUNC0( key );
	ep->value = FUNC0( value );
}