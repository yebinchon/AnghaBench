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
struct ref {struct ref* symref; struct ref* remote_status; struct ref* peer_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ref*) ; 

void FUNC1(struct ref *ref)
{
	if (!ref)
		return;
	FUNC1(ref->peer_ref);
	FUNC0(ref->remote_status);
	FUNC0(ref->symref);
	FUNC0(ref);
}