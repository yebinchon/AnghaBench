#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct userdiff_funcname {scalar_t__ pattern; } ;
struct diff_options {TYPE_1__* repo; } ;
struct diff_filespec {TYPE_2__* driver; } ;
struct TYPE_4__ {struct userdiff_funcname const funcname; } ;
struct TYPE_3__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_filespec*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct userdiff_funcname *
FUNC1(struct diff_options *o, struct diff_filespec *one)
{
	FUNC0(one, o->repo->index);
	return one->driver->funcname.pattern ? &one->driver->funcname : NULL;
}