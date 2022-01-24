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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  extras ;

/* Variables and functions */
 int /*<<< orphan*/  YRMCDS_BAD_ARGUMENT ; 
 int /*<<< orphan*/  YRMCDS_CMD_DECREMENT ; 
 int /*<<< orphan*/  YRMCDS_CMD_DECREMENTQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,char const*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

yrmcds_error FUNC4(yrmcds* c, const char* key, size_t key_len,
                         uint64_t value, int quiet, uint32_t* serial) {
    if( c == NULL || key == NULL || key_len == 0 )
        return YRMCDS_BAD_ARGUMENT;

    if( c->text_mode )
        return FUNC3(c, key, key_len, value, quiet, serial);

    char extras[20];
    FUNC1(value, extras);
    FUNC1((uint64_t)0, &extras[8]);
    FUNC0(~(uint32_t)0, &extras[16]);
    return FUNC2(c, quiet ? YRMCDS_CMD_DECREMENTQ : YRMCDS_CMD_DECREMENT,
                        0, serial, key_len, key,
                        sizeof(extras), extras, 0, NULL);
}