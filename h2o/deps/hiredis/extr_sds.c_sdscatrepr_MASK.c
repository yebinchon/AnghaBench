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
typedef  int /*<<< orphan*/  sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const) ; 

sds FUNC3(sds s, const char *p, size_t len) {
    s = FUNC1(s,"\"",1);
    while(len--) {
        switch(*p) {
        case '\\':
        case '"':
            s = FUNC2(s,"\\%c",*p);
            break;
        case '\n': s = FUNC1(s,"\\n",2); break;
        case '\r': s = FUNC1(s,"\\r",2); break;
        case '\t': s = FUNC1(s,"\\t",2); break;
        case '\a': s = FUNC1(s,"\\a",2); break;
        case '\b': s = FUNC1(s,"\\b",2); break;
        default:
            if (FUNC0(*p))
                s = FUNC2(s,"%c",*p);
            else
                s = FUNC2(s,"\\x%02x",(unsigned char)*p);
            break;
        }
        p++;
    }
    return FUNC1(s,"\"",1);
}