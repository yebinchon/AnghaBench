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
struct rlimit_ {scalar_t__ max; } ;

/* Variables and functions */
 int _EPERM ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct rlimit_*) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static int FUNC2(int resource, struct rlimit_ new_limit) {
    if (FUNC1())
        return 0;
    struct rlimit_ old_limit;
    int err = FUNC0(current, resource, &old_limit);
    if (err < 0)
        return err;
    if (new_limit.max > old_limit.max)
        return _EPERM;
    return 0;
}