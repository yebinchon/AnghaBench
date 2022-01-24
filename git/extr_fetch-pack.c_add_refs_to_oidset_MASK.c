#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ref {int /*<<< orphan*/  old_oid; struct ref* next; } ;
struct oidset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct oidset*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct oidset *oids, struct ref *refs)
{
	for (; refs; refs = refs->next)
		FUNC0(oids, &refs->old_oid);
}