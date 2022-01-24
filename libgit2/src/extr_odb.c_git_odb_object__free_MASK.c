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
struct TYPE_2__ {void* buffer; } ;
typedef  TYPE_1__ git_odb_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

void FUNC1(void *object)
{
	if (object != NULL) {
		FUNC0(((git_odb_object *)object)->buffer);
		FUNC0(object);
	}
}