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
 int /*<<< orphan*/  FUNC0 (void*,char const*) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (int) ; 

void FUNC4( entity_t *ent, const char *key, const char *value ){
	epair_t *ep;


	/* check for existing epair */
	for ( ep = ent->epairs; ep != NULL; ep = ep->next )
	{
		if ( !FUNC0( ep->key, key ) ) {
			FUNC2( ep->value );
			ep->value = FUNC1( value );
			return;
		}
	}

	/* create new epair */
	ep = FUNC3( sizeof( *ep ) );
	ep->next = ent->epairs;
	ent->epairs = ep;
	ep->key = FUNC1( key );
	ep->value = FUNC1( value );
}