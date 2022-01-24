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
struct refspec_item {int /*<<< orphan*/  src; } ;
struct ref {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ref*,struct ref**) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ref**) ; 

__attribute__((used)) static int FUNC4(struct ref *src,
			      struct refspec_item *rs,
			      struct ref **match,
			      int *allocated_match)
{
	switch (FUNC1(rs->src, src, match)) {
	case 1:
		if (allocated_match)
			*allocated_match = 0;
		return 0;
	case 0:
		/* The source could be in the get_sha1() format
		 * not a reference name.  :refs/other is a
		 * way to delete 'other' ref at the remote end.
		 */
		if (FUNC3(rs->src, match) < 0)
			return FUNC2(FUNC0("src refspec %s does not match any"), rs->src);
		if (allocated_match)
			*allocated_match = 1;
		return 0;
	default:
		return FUNC2(FUNC0("src refspec %s matches more than one"), rs->src);
	}
}