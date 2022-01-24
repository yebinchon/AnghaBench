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
struct TYPE_7__ {TYPE_1__* cb; } ;
typedef  TYPE_2__ git_iterator ;
struct TYPE_6__ {int (* reset ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,char const*,char const*) ; 
 int FUNC1 (TYPE_2__*) ; 

int FUNC2(
	git_iterator *i, const char *start, const char *end)
{
	if (FUNC0(i, start, end) < 0)
		return -1;

	return i->cb->reset(i);
}