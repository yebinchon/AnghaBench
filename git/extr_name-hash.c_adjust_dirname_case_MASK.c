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
struct index_state {int dummy; } ;
struct dir_entry {scalar_t__ name; } ;

/* Variables and functions */
 struct dir_entry* FUNC0 (struct index_state*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,int) ; 

void FUNC3(struct index_state *istate, char *name)
{
	const char *startPtr = name;
	const char *ptr = startPtr;

	FUNC1(istate);
	while (*ptr) {
		while (*ptr && *ptr != '/')
			ptr++;

		if (*ptr == '/') {
			struct dir_entry *dir;

			dir = FUNC0(istate, name, ptr - name);
			if (dir) {
				FUNC2((void *)startPtr, dir->name + (startPtr - name), ptr - startPtr);
				startPtr = ptr + 1;
			}
			ptr++;
		}
	}
}