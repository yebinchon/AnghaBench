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
typedef  scalar_t__ uint32_t ;
struct line_buffer {int dummy; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 scalar_t__ S_IFLNK ; 
 long FUNC0 (scalar_t__,struct line_buffer*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  postimage ; 
 int /*<<< orphan*/  FUNC5 (char*,long) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (char*) ; 

void FUNC7(uint32_t mode,
				uint32_t old_mode, const char *old_data,
				off_t len, struct line_buffer *input)
{
	long postimage_len;

	FUNC1(len >= 0);
	postimage_len = FUNC0(len, input, old_data, old_mode);
	if (mode == S_IFLNK) {
		FUNC3(&postimage, FUNC6("link "));
		postimage_len -= FUNC6("link ");
	}
	FUNC5("data %ld\n", postimage_len);
	FUNC2(&postimage, postimage_len);
	FUNC4('\n', stdout);
}