#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*,size_t,int) ; 
 TYPE_1__* FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static git_reference *FUNC4(const char *name)
{
	git_reference *ref = NULL;
	size_t namelen = FUNC3(name), reflen;

	if (!FUNC0(&reflen, sizeof(git_reference), namelen) &&
		!FUNC0(&reflen, reflen, 1) &&
		(ref = FUNC1(1, reflen)) != NULL)
		FUNC2(ref->name, name, namelen + 1);

	return ref;
}