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
struct userdiff_driver {int dummy; } ;
struct repository {int /*<<< orphan*/  index; } ;
struct diff_filespec {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_filespec*,int /*<<< orphan*/ ) ; 
 struct userdiff_driver* FUNC2 (struct repository*,int /*<<< orphan*/ ) ; 

struct userdiff_driver *FUNC3(struct repository *r,
				     struct diff_filespec *one)
{
	if (!FUNC0(one))
		return NULL;

	FUNC1(one, r->index);
	return FUNC2(r, one->driver);
}