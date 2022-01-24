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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

__attribute__((used)) static const char *FUNC2(const char *buf, const char *buf_end, int *minor_version, int *ret)
{
    /* we want at least [HTTP/1.<two chars>] to try to parse */
    if (buf_end - buf < 9) {
        *ret = -2;
        return NULL;
    }
    FUNC0('H');
    FUNC0('T');
    FUNC0('T');
    FUNC0('P');
    FUNC0('/');
    FUNC0('1');
    FUNC0('.');
    FUNC1(minor_version, 1);
    return buf;
}