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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {void* entry; void* base; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (void*,char*,void**,int) ; 
 TYPE_1__ opal ; 

__attribute__((used)) static void FUNC3(void)
{
	void *opal_node;

	opal_node = FUNC1("/ibm,opal");
	if (!opal_node)
		return;
	if (FUNC2(opal_node, "opal-base-address", &opal.base, sizeof(u64)) < 0)
		return;
	opal.base = FUNC0(opal.base);
	if (FUNC2(opal_node, "opal-entry-address", &opal.entry, sizeof(u64)) < 0)
		return;
	opal.entry = FUNC0(opal.entry);
}