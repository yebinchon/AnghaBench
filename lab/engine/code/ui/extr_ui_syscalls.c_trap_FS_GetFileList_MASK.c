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
 int /*<<< orphan*/  UI_FS_GETFILELIST ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,char const*,char*,int) ; 

int FUNC1(  const char *path, const char *extension, char *listbuf, int bufsize ) {
	return FUNC0( UI_FS_GETFILELIST, path, extension, listbuf, bufsize );
}