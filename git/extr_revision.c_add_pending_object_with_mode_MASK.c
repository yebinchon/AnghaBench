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
struct rev_info {int dummy; } ;
struct object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rev_info*,struct object*,char const*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct rev_info *revs,
					 struct object *obj,
					 const char *name, unsigned mode)
{
	FUNC0(revs, obj, name, mode, NULL);
}