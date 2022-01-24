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
struct subsys_private {struct class* class; } ;
struct kobject {int dummy; } ;
struct class {int /*<<< orphan*/  name; int /*<<< orphan*/  (* class_release ) (struct class*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct subsys_private*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct class*) ; 
 struct subsys_private* FUNC3 (struct kobject*) ; 

__attribute__((used)) static void FUNC4(struct kobject *kobj)
{
	struct subsys_private *cp = FUNC3(kobj);
	struct class *class = cp->class;

	FUNC1("class '%s': release.\n", class->name);

	if (class->class_release)
		class->class_release(class);
	else
		FUNC1("class '%s' does not have a release() function, "
			 "be careful\n", class->name);

	FUNC0(cp);
}