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
typedef  scalar_t__ yrmcds_error ;
struct TYPE_4__ {scalar_t__ serial; } ;
typedef  TYPE_1__ yrmcds_cnt_response ;
typedef  int /*<<< orphan*/  yrmcds_cnt ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ YRMCDS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(yrmcds_cnt* c, yrmcds_cnt_response* r, uint32_t serial) {
    yrmcds_error e;
    while( 1 ) {
        e = FUNC3(c, r);
        if( e != YRMCDS_OK ) {
            FUNC1(stderr, "yc-cnt: failed to recv: %s\n",
                    FUNC4(e));
            FUNC2(c);
            FUNC0(1);
        }
        if( r->serial == serial )
            break;
    }
}