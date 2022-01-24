#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  scheme; } ;
typedef  TYPE_1__ h2o_url_t ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 int FUNC0 (char const*,char const*,TYPE_1__*) ; 
 char* FUNC1 (char const*,char const*,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char const*) ; 

int FUNC3(const char *url, size_t url_len, h2o_url_t *parsed)
{
    const char *url_end, *p;

    if (url_len == SIZE_MAX)
        url_len = FUNC2(url);
    url_end = url + url_len;

    /* check and skip scheme */
    if ((p = FUNC1(url, url_end, &parsed->scheme)) == NULL)
        return -1;

    /* skip "//" */
    if (!(url_end - p >= 2 && p[0] == '/' && p[1] == '/'))
        return -1;
    p += 2;

    return FUNC0(p, url_end, parsed);
}