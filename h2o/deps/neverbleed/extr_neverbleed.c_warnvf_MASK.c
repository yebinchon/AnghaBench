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
typedef  int /*<<< orphan*/  errbuf ;

/* Variables and functions */
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *fmt, va_list args)
{
    char errbuf[256];

    if (errno != 0) {
        FUNC3(errno, errbuf, sizeof(errbuf));
    } else {
        errbuf[0] = '\0';
    }

    FUNC0(stderr, "[openssl-privsep] ");
    FUNC4(stderr, fmt, args);
    if (errbuf[0] != '\0')
        FUNC2(errbuf, stderr);
    FUNC1('\n', stderr);
}