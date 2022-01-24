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
struct kobject {int dummy; } ;
struct class_dir {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct class_dir*) ; 
 struct class_dir* FUNC1 (struct kobject*) ; 

__attribute__((used)) static void FUNC2(struct kobject *kobj)
{
	struct class_dir *dir = FUNC1(kobj);
	FUNC0(dir);
}