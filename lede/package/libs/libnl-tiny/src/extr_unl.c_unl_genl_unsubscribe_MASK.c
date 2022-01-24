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
struct unl {int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct unl*,char const*) ; 

int FUNC2(struct unl *unl, const char *name)
{
	int mcid;

	mcid = FUNC1(unl, name);
	if (mcid < 0)
		return mcid;

	return FUNC0(unl->sock, mcid);
}