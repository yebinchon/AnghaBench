#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,size_t,int) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

git_reference *FUNC4(
	git_reference *ref, const char *name)
{
	size_t namelen = FUNC3(name);
	size_t reflen;
	git_reference *rewrite = NULL;

	if (!FUNC0(&reflen, sizeof(git_reference), namelen) &&
		!FUNC0(&reflen, reflen, 1) &&
		(rewrite = FUNC1(ref, reflen)) != NULL)
		FUNC2(rewrite->name, name, namelen + 1);

	return rewrite;
}