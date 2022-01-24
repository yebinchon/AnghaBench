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
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int FUNC1 (char*,int) ; 
 char** FUNC2 (char const*,char const*,int*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

int	FUNC6(  const char *path, const char *extension, char *listbuf, int bufsize ) {
	int		nFiles, i, nTotal, nLen;
	char **pFiles = NULL;

	*listbuf = 0;
	nFiles = 0;
	nTotal = 0;

	if (FUNC3(path, "$modlist") == 0) {
		return FUNC1(listbuf, bufsize);
	}

	pFiles = FUNC2(path, extension, &nFiles);

	for (i =0; i < nFiles; i++) {
		nLen = FUNC5(pFiles[i]) + 1;
		if (nTotal + nLen + 1 < bufsize) {
			FUNC4(listbuf, pFiles[i]);
			listbuf += nLen;
			nTotal += nLen;
		}
		else {
			nFiles = i;
			break;
		}
	}

	FUNC0(pFiles);

	return nFiles;
}