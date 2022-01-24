#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int serial; } ;
typedef  TYPE_1__ yrmcds_response ;
typedef  int /*<<< orphan*/  yrmcds_error ;
typedef  int /*<<< orphan*/  yrmcds ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ quiet ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int*) ; 

int FUNC7(int argc, char** argv, yrmcds* s) {
    yrmcds_response r[1];
    uint32_t serial;
    yrmcds_error e = FUNC6(s, quiet, &serial);
    FUNC0(e);
    if( quiet ) {
        e = FUNC4(s, &serial);
        FUNC0(e);
    }
    if( debug )
        FUNC2(stderr, "request serial = %u\n", serial);
    while( 1 ) {
        e = FUNC5(s, r);
        FUNC0(e);
        if( debug )
            FUNC3(r);
        FUNC1(r);
        if( r->serial == serial )
            break;
    }
    return 0;
}