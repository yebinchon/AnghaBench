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
struct tgroup {int /*<<< orphan*/  lock; struct rlimit_* limits; } ;
struct task {struct tgroup* group; } ;
struct rlimit_ {int dummy; } ;

/* Variables and functions */
 int _EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct task *task, int resource, struct rlimit_ *limit) {
    if (!FUNC1(resource))
        return _EINVAL;
    struct tgroup *group = task->group;
    FUNC0(&group->lock);
    *limit = group->limits[resource];
    FUNC2(&group->lock);
    return 0;
}