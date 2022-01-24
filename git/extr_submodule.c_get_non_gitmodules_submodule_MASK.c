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
struct submodule {char const* path; char const* name; } ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct submodule*,int /*<<< orphan*/ ,int) ; 
 struct submodule* FUNC2 (int) ; 

__attribute__((used)) static const struct submodule *FUNC3(const char *path)
{
	struct submodule *ret = NULL;
	const char *name = FUNC0(path);

	if (!name)
		return NULL;

	ret = FUNC2(sizeof(*ret));
	FUNC1(ret, 0, sizeof(*ret));
	ret->path = name;
	ret->name = name;

	return (const struct submodule *) ret;
}