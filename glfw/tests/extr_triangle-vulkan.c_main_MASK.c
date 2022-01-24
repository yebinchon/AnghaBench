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
struct demo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct demo*) ; 
 int /*<<< orphan*/  FUNC1 (struct demo*) ; 
 int /*<<< orphan*/  FUNC2 (struct demo*,int const,char const**) ; 
 int /*<<< orphan*/  FUNC3 (struct demo*) ; 
 int /*<<< orphan*/  FUNC4 (struct demo*) ; 
 int /*<<< orphan*/  FUNC5 (struct demo*) ; 
 int validation_error ; 

int FUNC6(const int argc, const char *argv[]) {
    struct demo demo;

    FUNC2(&demo, argc, argv);
    FUNC1(&demo);
    FUNC3(&demo);

    FUNC4(&demo);
    FUNC5(&demo);

    FUNC0(&demo);

    return validation_error;
}