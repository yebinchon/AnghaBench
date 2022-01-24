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
struct unl {scalar_t__ cache; scalar_t__ sock; scalar_t__ family_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct unl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct unl *unl)
{
	if (unl->family_name)
		FUNC0(unl->family_name);

	if (unl->sock)
		FUNC3(unl->sock);

	if (unl->cache)
		FUNC2(unl->cache);

	FUNC1(unl, 0, sizeof(*unl));
}