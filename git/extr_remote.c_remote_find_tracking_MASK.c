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
struct remote {int /*<<< orphan*/  fetch; } ;
struct refspec_item {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct refspec_item*) ; 

int FUNC1(struct remote *remote, struct refspec_item *refspec)
{
	return FUNC0(&remote->fetch, refspec);
}