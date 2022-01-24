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
struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {char* name; scalar_t__ enabled; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* idle_mode ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct kobject *kobj,
			     struct kobj_attribute *attr, char *buf)
{
	char *s = buf;
	int i;

	for (i = 0; i < FUNC0(idle_mode); i++) {
		if (idle_mode[i].enabled)
			s += FUNC1(s, "[%s] ", idle_mode[i].name);
		else
			s += FUNC1(s, "%s ", idle_mode[i].name);
	}

	*(s-1) = '\n'; /* convert the last space to a newline */

	return s - buf;
}