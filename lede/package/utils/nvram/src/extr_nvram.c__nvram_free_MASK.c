#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {struct TYPE_6__* value; struct TYPE_6__* next; } ;
typedef  TYPE_1__ nvram_tuple_t ;
struct TYPE_7__ {TYPE_1__* nvram_dead; TYPE_1__** nvram_hash; } ;
typedef  TYPE_2__ nvram_handle_t ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(nvram_handle_t *h)
{
	uint32_t i;
	nvram_tuple_t *t, *next;

	/* Free hash table */
	for (i = 0; i < FUNC0(h->nvram_hash); i++) {
		for (t = h->nvram_hash[i]; t; t = next) {
			next = t->next;
			if (t->value)
				FUNC1(t->value);
			FUNC1(t);
		}
		h->nvram_hash[i] = NULL;
	}

	/* Free dead table */
	for (t = h->nvram_dead; t; t = next) {
		next = t->next;
		if (t->value)
			FUNC1(t->value);
		FUNC1(t);
	}

	h->nvram_dead = NULL;
}