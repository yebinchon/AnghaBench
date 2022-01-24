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
struct device {int dummy; } ;
struct component_match_array {int dummy; } ;
struct component_match {size_t alloc; struct component_match_array* compare; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct component_match_array*) ; 
 struct component_match_array* FUNC1 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct component_match_array*,struct component_match_array*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
	struct component_match *match, size_t num)
{
	struct component_match_array *new;

	if (match->alloc == num)
		return 0;

	new = FUNC1(num, sizeof(*new), GFP_KERNEL);
	if (!new)
		return -ENOMEM;

	if (match->compare) {
		FUNC2(new, match->compare, sizeof(*new) *
					    FUNC3(match->num, num));
		FUNC0(match->compare);
	}
	match->compare = new;
	match->alloc = num;

	return 0;
}