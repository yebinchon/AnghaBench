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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int LARGE_PACKET_MAX ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  stdin ; 

__attribute__((used)) static void FUNC2(int argc, const char **argv)
{
	if (argc) { /* read from argv */
		int i;
		for (i = 0; i < argc; i++)
			FUNC1(argv[i]);
	} else { /* read from stdin */
		char line[LARGE_PACKET_MAX];
		while (FUNC0(line, sizeof(line), stdin)) {
			FUNC1(line);
		}
	}
}