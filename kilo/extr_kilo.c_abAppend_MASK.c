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
struct abuf {char* b; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char*,int) ; 

void FUNC2(struct abuf *ab, const char *s, int len) {
    char *new = FUNC1(ab->b,ab->len+len);

    if (new == NULL) return;
    FUNC0(new+ab->len,s,len);
    ab->b = new;
    ab->len += len;
}