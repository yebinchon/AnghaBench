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
typedef  scalar_t__ yrmcds_error ;

/* Variables and functions */
 scalar_t__ YRMCDS_SYSTEM_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (scalar_t__) ; 

void FUNC4(yrmcds_error e) {
    if( e != 0 ) {
        if( e == YRMCDS_SYSTEM_ERROR ) {
            FUNC0(0, errno, "system error");
        } else {
            FUNC2(stderr, "yrmcds error: %s\n", FUNC3(e));
        }
        FUNC1(2);
    }
}