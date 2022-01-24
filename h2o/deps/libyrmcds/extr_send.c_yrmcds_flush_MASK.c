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
typedef  int /*<<< orphan*/  yrmcds_error ;
struct TYPE_5__ {scalar_t__ text_mode; } ;
typedef  TYPE_1__ yrmcds ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  extra ;

/* Variables and functions */
 int /*<<< orphan*/  YRMCDS_BAD_ARGUMENT ; 
 int /*<<< orphan*/  YRMCDS_CMD_FLUSH ; 
 int /*<<< orphan*/  YRMCDS_CMD_FLUSHQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int,scalar_t__*) ; 

yrmcds_error FUNC3(yrmcds* c, uint32_t delay,
                          int quiet, uint32_t* serial) {
    if( c == NULL )
        return YRMCDS_BAD_ARGUMENT;

    if( c->text_mode )
        return FUNC2(c, delay, quiet, serial);

    if( delay == 0 )
        return FUNC1(c, quiet ? YRMCDS_CMD_FLUSHQ : YRMCDS_CMD_FLUSH,
                            0, serial, 0, NULL, 0, NULL, 0, NULL);

    char extra[4];
    FUNC0(delay, extra);
    return FUNC1(c, quiet ? YRMCDS_CMD_FLUSHQ : YRMCDS_CMD_FLUSH,
                        0, serial, 0, NULL, sizeof(extra), extra, 0, NULL);
}