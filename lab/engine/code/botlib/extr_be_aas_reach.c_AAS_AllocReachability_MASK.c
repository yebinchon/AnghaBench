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
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ aas_lreachability_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* nextreachability ; 
 int /*<<< orphan*/  numlreachabilities ; 

aas_lreachability_t *FUNC1(void)
{
	aas_lreachability_t *r;

	if (!nextreachability) return NULL;
	//make sure the error message only shows up once
	if (!nextreachability->next) FUNC0("AAS_MAX_REACHABILITYSIZE\n");
	//
	r = nextreachability;
	nextreachability = nextreachability->next;
	numlreachabilities++;
	return r;
}