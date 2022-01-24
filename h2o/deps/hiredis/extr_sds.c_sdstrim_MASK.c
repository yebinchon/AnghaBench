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
typedef  char* sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t) ; 
 scalar_t__ FUNC3 (char const*,char) ; 

sds FUNC4(sds s, const char *cset) {
    char *start, *end, *sp, *ep;
    size_t len;

    sp = start = s;
    ep = end = s+FUNC1(s)-1;
    while(sp <= end && FUNC3(cset, *sp)) sp++;
    while(ep > sp && FUNC3(cset, *ep)) ep--;
    len = (sp > ep) ? 0 : ((ep-sp)+1);
    if (s != sp) FUNC0(s, sp, len);
    s[len] = '\0';
    FUNC2(s,len);
    return s;
}