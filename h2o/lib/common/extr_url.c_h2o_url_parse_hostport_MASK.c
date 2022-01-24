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
typedef  int uint16_t ;
struct TYPE_4__ {scalar_t__ len; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 TYPE_1__ FUNC0 (char const*,int) ; 
 size_t FUNC1 (char const*,int) ; 
 char* FUNC2 (char const*,char,int) ; 

const char *FUNC3(const char *s, size_t len, h2o_iovec_t *host, uint16_t *port)
{
    const char *token_start = s, *token_end, *end = s + len;

    *port = 65535;

    if (token_start == end)
        return NULL;

    if (*token_start == '[') {
        /* is IPv6 address */
        ++token_start;
        if ((token_end = FUNC2(token_start, ']', end - token_start)) == NULL)
            return NULL;
        *host = FUNC0(token_start, token_end - token_start);
        token_start = token_end + 1;
    } else {
        for (token_end = token_start; !(token_end == end || *token_end == '/' || *token_end == ':'); ++token_end)
            ;
        *host = FUNC0(token_start, token_end - token_start);
        token_start = token_end;
    }

    /* disallow zero-length host */
    if (host->len == 0)
        return NULL;

    /* parse port */
    if (token_start != end && *token_start == ':') {
        size_t p;
        ++token_start;
        if ((token_end = FUNC2(token_start, '/', end - token_start)) == NULL)
            token_end = end;
        if ((p = FUNC1(token_start, token_end - token_start)) >= 65535)
            return NULL;
        *port = (uint16_t)p;
        token_start = token_end;
    }

    return token_start;
}