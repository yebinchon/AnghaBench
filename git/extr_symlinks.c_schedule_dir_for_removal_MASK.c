#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ,int,int*) ; 
 TYPE_1__ removal ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int) ; 

void FUNC3(const char *name, int len)
{
	int match_len, last_slash, i, previous_slash;

	match_len = last_slash = i =
		FUNC1(name, len, removal.buf, removal.len,
				   &previous_slash);
	/* Find last slash inside 'name' */
	while (i < len) {
		if (name[i] == '/')
			last_slash = i;
		i++;
	}

	/*
	 * If we are about to go down the directory tree, we check if
	 * we must first go upwards the tree, such that we then can
	 * remove possible empty directories as we go upwards.
	 */
	if (match_len < last_slash && match_len < removal.len)
		FUNC0(match_len);
	/*
	 * If we go deeper down the directory tree, we only need to
	 * save the new path components as we go down.
	 */
	if (match_len < last_slash)
		FUNC2(&removal, &name[match_len], last_slash - match_len);
}