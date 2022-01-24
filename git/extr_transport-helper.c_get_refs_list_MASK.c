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
struct transport {TYPE_1__* vtable; } ;
struct ref {int dummy; } ;
struct argv_array {int dummy; } ;
struct TYPE_2__ {struct ref* (* get_refs_list ) (struct transport*,int,struct argv_array const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct transport*) ; 
 int /*<<< orphan*/  FUNC1 (struct transport*) ; 
 struct ref* FUNC2 (struct transport*,int) ; 
 scalar_t__ FUNC3 (struct transport*,int) ; 
 struct ref* FUNC4 (struct transport*,int,struct argv_array const*) ; 

__attribute__((used)) static struct ref *FUNC5(struct transport *transport, int for_push,
				 const struct argv_array *ref_prefixes)
{
	FUNC1(transport);

	if (FUNC3(transport, for_push)) {
		FUNC0(transport);
		return transport->vtable->get_refs_list(transport, for_push, ref_prefixes);
	}

	return FUNC2(transport, for_push);
}