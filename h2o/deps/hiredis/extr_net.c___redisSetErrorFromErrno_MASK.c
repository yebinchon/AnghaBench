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
typedef  int /*<<< orphan*/  redisContext ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int errno ; 
 size_t FUNC2 (char*,int,char*,char const*) ; 

__attribute__((used)) static void FUNC3(redisContext *c, int type, const char *prefix) {
    int errorno = errno;  /* snprintf() may change errno */
    char buf[128] = { 0 };
    size_t len = 0;

    if (prefix != NULL)
        len = FUNC2(buf,sizeof(buf),"%s: ",prefix);
    FUNC1(errorno, (char *)(buf + len), sizeof(buf) - len);
    FUNC0(c,type,buf);
}