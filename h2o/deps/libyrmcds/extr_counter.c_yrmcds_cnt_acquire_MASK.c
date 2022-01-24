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
typedef  int /*<<< orphan*/  yrmcds_error ;
typedef  int /*<<< orphan*/  yrmcds_cnt ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  body ;

/* Variables and functions */
 size_t UINT16_MAX ; 
 int /*<<< orphan*/  YRMCDS_BAD_ARGUMENT ; 
 int /*<<< orphan*/  YRMCDS_CNT_CMD_ACQUIRE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int,char*,size_t,char const*) ; 

yrmcds_error
FUNC3(yrmcds_cnt* c, const char* name, size_t name_len,
                   uint32_t resources, uint32_t initial, uint32_t* serial) {
    if( name == NULL || name_len == 0 || name_len > UINT16_MAX ||
        resources == 0 || resources > initial )
        return YRMCDS_BAD_ARGUMENT;

    char body[10];
    FUNC1(resources, body);
    FUNC1(initial, body + 4);
    FUNC0((uint16_t)name_len, body + 8);
    return FUNC2(c, YRMCDS_CNT_CMD_ACQUIRE, serial,
                        sizeof(body), body, name_len, name);
}