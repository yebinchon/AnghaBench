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
 scalar_t__ html ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(int len, const char *s) {
	for ( ; len-- > 0; s++)
		if (*s == '&' && html)
			FUNC0("&amp;");
		else if (*s == '<' && html)
			FUNC0("&lt;");
		else if (*s == '>' && html)
			FUNC0("&lt;");
		else if (*s == '"' || *s == '\\')
			FUNC0("\\%c", *s);
		else if (*s >= ' ' && *s < 0177)
			FUNC0("%c", *s);
		else
			FUNC0("\\%d%d%d", (*s>>6)&3, (*s>>3)&7, *s&7);
}