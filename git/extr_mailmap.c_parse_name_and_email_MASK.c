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
 scalar_t__ FUNC0 (char) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static char *FUNC2(char *buffer, char **name,
				  char **email, int allow_empty_email)
{
	char *left, *right, *nstart, *nend;
	*name = *email = NULL;

	if ((left = FUNC1(buffer, '<')) == NULL)
		return NULL;
	if ((right = FUNC1(left+1, '>')) == NULL)
		return NULL;
	if (!allow_empty_email && (left+1 == right))
		return NULL;

	/* remove whitespace from beginning and end of name */
	nstart = buffer;
	while (FUNC0(*nstart) && nstart < left)
		++nstart;
	nend = left-1;
	while (nend > nstart && FUNC0(*nend))
		--nend;

	*name = (nstart <= nend ? nstart : NULL);
	*email = left+1;
	*(nend+1) = '\0';
	*right++ = '\0';

	return (*right == '\0' ? NULL : right);
}