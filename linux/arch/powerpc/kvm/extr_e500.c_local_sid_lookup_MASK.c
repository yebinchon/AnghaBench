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
struct id {size_t val; scalar_t__ pentry; } ;
struct TYPE_2__ {int /*<<< orphan*/ * entry; } ;

/* Variables and functions */
 struct id* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ pcpu_sids ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(struct id *entry)
{
	if (entry && entry->val != 0 &&
	    FUNC0(pcpu_sids.entry[entry->val]) == entry &&
	    entry->pentry == FUNC1(&pcpu_sids.entry[entry->val]))
		return entry->val;
	return -1;
}