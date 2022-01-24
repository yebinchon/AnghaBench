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
struct mount {scalar_t__ root_fd; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_DIRECTORY ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct mount *mount) {
    mount->root_fd = FUNC1(mount->source, O_DIRECTORY);
    if (mount->root_fd < 0)
        return FUNC0();
    return 0;
}