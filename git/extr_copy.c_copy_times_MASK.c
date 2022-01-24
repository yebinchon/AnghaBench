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
struct utimbuf {int /*<<< orphan*/  modtime; int /*<<< orphan*/  actime; } ;
struct stat {int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_atime; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,struct stat*) ; 
 scalar_t__ FUNC1 (char const*,struct utimbuf*) ; 

__attribute__((used)) static int FUNC2(const char *dst, const char *src)
{
	struct stat st;
	struct utimbuf times;
	if (FUNC0(src, &st) < 0)
		return -1;
	times.actime = st.st_atime;
	times.modtime = st.st_mtime;
	if (FUNC1(dst, &times) < 0)
		return -1;
	return 0;
}