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
struct phr_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 char* FUNC1 (char const*,char const*,char const**,size_t*,int*) ; 
 char const* FUNC2 (char const*,char const*,struct phr_header*,size_t*,size_t,int*) ; 
 char* FUNC3 (char const*,char const*,int*,int*) ; 

__attribute__((used)) static const char *FUNC4(const char *buf, const char *buf_end, int *minor_version, int *status, const char **msg,
                                  size_t *msg_len, struct phr_header *headers, size_t *num_headers, size_t max_headers, int *ret)
{
    /* parse "HTTP/1.x" */
    if ((buf = FUNC3(buf, buf_end, minor_version, ret)) == NULL) {
        return NULL;
    }
    /* skip space */
    if (*buf++ != ' ') {
        *ret = -1;
        return NULL;
    }
    /* parse status code, we want at least [:digit:][:digit:][:digit:]<other char> to try to parse */
    if (buf_end - buf < 4) {
        *ret = -2;
        return NULL;
    }
    FUNC0(status);

    /* skip space */
    if (*buf++ != ' ') {
        *ret = -1;
        return NULL;
    }
    /* get message */
    if ((buf = FUNC1(buf, buf_end, msg, msg_len, ret)) == NULL) {
        return NULL;
    }

    return FUNC2(buf, buf_end, headers, num_headers, max_headers, ret);
}