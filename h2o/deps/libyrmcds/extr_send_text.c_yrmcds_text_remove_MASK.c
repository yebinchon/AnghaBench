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
typedef  int /*<<< orphan*/  yrmcds ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  textbuf_t ;

/* Variables and functions */
 scalar_t__ YRMCDS_BAD_ARGUMENT ; 
 scalar_t__ YRMCDS_OK ; 
 scalar_t__ FUNC0 (char const*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

yrmcds_error FUNC5(yrmcds* c, const char* key, size_t key_len,
                                int quiet, uint32_t* serial) {
    if( key == NULL || key_len == 0 || quiet )
        return YRMCDS_BAD_ARGUMENT;

    yrmcds_error ret;
    ret = FUNC0(key, key_len);
    if( ret != YRMCDS_OK ) return ret;

    textbuf_t buf[1];
    FUNC4(buf);

    FUNC2(buf, "delete ");
    FUNC3(buf, key, key_len);

    return FUNC1(c, buf, serial);
}