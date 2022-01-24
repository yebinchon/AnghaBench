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
struct regex {struct regex* extra; struct regex* regex; struct regex* pattern; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct regex*) ; 

void FUNC1(struct regex *regex) {
    if (!regex)
        return;
    FUNC0(regex->pattern);
    FUNC0(regex->regex);
    FUNC0(regex->extra);
    FUNC0(regex);
}