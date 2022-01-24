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
struct zcomp {char const* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct zcomp* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct zcomp*) ; 
 struct zcomp* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (struct zcomp*) ; 

struct zcomp *FUNC5(const char *compress)
{
	struct zcomp *comp;
	int error;

	if (!FUNC3(compress))
		return FUNC0(-EINVAL);

	comp = FUNC2(sizeof(struct zcomp), GFP_KERNEL);
	if (!comp)
		return FUNC0(-ENOMEM);

	comp->name = compress;
	error = FUNC4(comp);
	if (error) {
		FUNC1(comp);
		return FUNC0(error);
	}
	return comp;
}