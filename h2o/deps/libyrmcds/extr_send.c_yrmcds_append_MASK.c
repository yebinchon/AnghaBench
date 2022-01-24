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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  YRMCDS_BAD_ARGUMENT ; 
 int /*<<< orphan*/  YRMCDS_CMD_APPEND ; 
 int /*<<< orphan*/  YRMCDS_CMD_APPENDQ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,size_t,char const*,size_t,int,int /*<<< orphan*/ *) ; 

yrmcds_error FUNC2(yrmcds* c, const char* key, size_t key_len,
                           const char* data, size_t data_len,
                           int quiet, uint32_t* serial) {
    if( c == NULL || key == NULL || key_len == 0 ||
        data == NULL || data_len == 0 )
        return YRMCDS_BAD_ARGUMENT;

    if( c->text_mode )
        return FUNC1(c, key, key_len, data, data_len,
                                  quiet, serial);

    return FUNC0(c, quiet ? YRMCDS_CMD_APPENDQ : YRMCDS_CMD_APPEND,
                        0, serial, key_len, key, 0, NULL, data_len, data);
}