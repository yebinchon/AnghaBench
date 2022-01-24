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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(char c)
{
	static int pending_newline = 0;  /* did last write end with unprinted newline? */
	static int width = 16;

	if (c == '\n') {	
		while (width-- > 0)
			FUNC0(' ');
		width = 16;
		FUNC1(500);
		pending_newline = 1;
	} else {
		if (pending_newline) {
			FUNC0('\r');
			FUNC0('\n');
		} 
		pending_newline = 0;
		if (width--) {
			FUNC0(c);
			FUNC2(10000);
		}
	}
}