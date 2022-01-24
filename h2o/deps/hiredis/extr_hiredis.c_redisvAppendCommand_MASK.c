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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  redisContext ;

/* Variables and functions */
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_OOM ; 
 int /*<<< orphan*/  REDIS_ERR_OTHER ; 
 scalar_t__ REDIS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,char const*,int /*<<< orphan*/ ) ; 

int FUNC4(redisContext *c, const char *format, va_list ap) {
    char *cmd;
    int len;

    len = FUNC3(&cmd,format,ap);
    if (len == -1) {
        FUNC1(c,REDIS_ERR_OOM,"Out of memory");
        return REDIS_ERR;
    } else if (len == -2) {
        FUNC1(c,REDIS_ERR_OTHER,"Invalid format string");
        return REDIS_ERR;
    }

    if (FUNC0(c,cmd,len) != REDIS_OK) {
        FUNC2(cmd);
        return REDIS_ERR;
    }

    FUNC2(cmd);
    return REDIS_OK;
}