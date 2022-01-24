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
struct pattern_list {char* filebuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,struct pattern_list*,int) ; 
 scalar_t__ FUNC1 (char**,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *buf, size_t size,
				    const char *base, int baselen,
				    struct pattern_list *pl)
{
	int i, lineno = 1;
	char *entry;

	pl->filebuf = buf;

	if (FUNC1(&buf, size))
		size -= buf - pl->filebuf;

	entry = buf;

	for (i = 0; i < size; i++) {
		if (buf[i] == '\n') {
			if (entry != buf + i && entry[0] != '#') {
				buf[i - (i && buf[i-1] == '\r')] = 0;
				FUNC2(entry);
				FUNC0(entry, base, baselen, pl, lineno);
			}
			lineno++;
			entry = buf + i + 1;
		}
	}
	return 0;
}