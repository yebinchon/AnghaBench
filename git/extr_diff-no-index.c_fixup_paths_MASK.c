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
struct strbuf {char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,char const*) ; 
 char const* file_from_standard_input ; 
 unsigned int FUNC1 (char const*) ; 

__attribute__((used)) static void FUNC2(const char **path, struct strbuf *replacement)
{
	unsigned int isdir0, isdir1;

	if (path[0] == file_from_standard_input ||
	    path[1] == file_from_standard_input)
		return;
	isdir0 = FUNC1(path[0]);
	isdir1 = FUNC1(path[1]);
	if (isdir0 == isdir1)
		return;
	if (isdir0) {
		FUNC0(replacement, path[0], path[1]);
		path[0] = replacement->buf;
	} else {
		FUNC0(replacement, path[1], path[0]);
		path[1] = replacement->buf;
	}
}