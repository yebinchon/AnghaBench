#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__ git_default_date ; 

__attribute__((used)) static const char *FUNC1(void)
{
	if (!git_default_date.len)
		FUNC0(&git_default_date);
	return git_default_date.buf;
}