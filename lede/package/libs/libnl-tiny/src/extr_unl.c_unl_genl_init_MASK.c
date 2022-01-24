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
struct unl {int /*<<< orphan*/  family; int /*<<< orphan*/  cache; int /*<<< orphan*/  sock; int /*<<< orphan*/  family_name; int /*<<< orphan*/  hdrlen; } ;
struct genlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct unl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct unl*) ; 
 scalar_t__ FUNC7 (struct unl*) ; 

int FUNC8(struct unl *unl, const char *family)
{
	FUNC4(unl, 0, sizeof(*unl));

	if (FUNC7(unl))
		goto error_out;

	unl->hdrlen = FUNC0(sizeof(struct genlmsghdr));
	unl->family_name = FUNC5(family);
	if (!unl->family_name)
		goto error;

	if (FUNC1(unl->sock))
		goto error;

	if (FUNC2(unl->sock, &unl->cache))
		goto error;

	unl->family = FUNC3(unl->cache, family);
	if (!unl->family)
		goto error;

	return 0;

error:
	FUNC6(unl);
error_out:
	return -1;
}