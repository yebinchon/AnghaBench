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

__attribute__((used)) static void FUNC1(void *arg, char *s, int l)
{
    int i;

    // special termination call
    if ((l==1) && (s[0] == '\0')) return;

    for (i=0; i< l; i++) {
	FUNC0(s[i]);
	if (s[i] == '\n') FUNC0('\r');
    }
}