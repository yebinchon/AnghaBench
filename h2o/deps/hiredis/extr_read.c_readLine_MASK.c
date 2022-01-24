#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* buf; int pos; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ redisReader ;

/* Variables and functions */
 char* FUNC0 (char*,int) ; 

__attribute__((used)) static char *FUNC1(redisReader *r, int *_len) {
    char *p, *s;
    int len;

    p = r->buf+r->pos;
    s = FUNC0(p,(r->len-r->pos));
    if (s != NULL) {
        len = s-(r->buf+r->pos);
        r->pos += len+2; /* skip \r\n */
        if (_len) *_len = len;
        return p;
    }
    return NULL;
}