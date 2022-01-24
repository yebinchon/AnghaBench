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
 int /*<<< orphan*/  FUNC0 (char**,char**,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char** FUNC3 (int) ; 

void FUNC4(char **filelist, int numfiles) {
	int i, j, k, numsortedfiles;
	char **sortedlist;

	sortedlist = FUNC3( ( numfiles + 1 ) * sizeof( *sortedlist ) );
	sortedlist[0] = NULL;
	numsortedfiles = 0;
	for (i = 0; i < numfiles; i++) {
		for (j = 0; j < numsortedfiles; j++) {
			if (FUNC1(filelist[i], sortedlist[j]) < 0) {
				break;
			}
		}
		for (k = numsortedfiles; k > j; k--) {
			sortedlist[k] = sortedlist[k-1];
		}
		sortedlist[j] = filelist[i];
		numsortedfiles++;
	}
	FUNC0(filelist, sortedlist, numfiles * sizeof( *filelist ) );
	FUNC2(sortedlist);
}