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
 char* FUNC0 (int,char*,size_t) ; 

char *FUNC1(int err, char *buf, size_t len)
{
#ifndef _GNU_SOURCE
    FUNC0(err, buf, len);
    return buf;
#else
    /**
     * The GNU-specific strerror_r() returns a pointer to a string containing the error message.
     * This may be either a pointer to a string that the function stores in  buf,
     * or a pointer to some (immutable) static string (in which case buf is unused)
     */
    return strerror_r(err, buf, len);
#endif
}