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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {char* buf; } ;
struct sliding_view {TYPE_1__ buf; scalar_t__ max_off; } ;
struct line_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct sliding_view FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_IFLNK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 (struct sliding_view*,scalar_t__,int) ; 
 scalar_t__ FUNC10 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  postimage ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 int /*<<< orphan*/  report_buffer ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (char*) ; 
 scalar_t__ FUNC16 (struct line_buffer*,int /*<<< orphan*/ ,struct sliding_view*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC17(off_t len, struct line_buffer *input,
			const char *old_data, uint32_t old_mode)
{
	long ret;
	struct sliding_view preimage = FUNC0(&report_buffer, 0);
	FILE *out;

	if (FUNC8() || !(out = FUNC3(&postimage)))
		FUNC5("cannot open temporary file for blob retrieval");
	if (old_data) {
		const char *response;
		FUNC11("cat-blob %s\n", old_data);
		FUNC6(stdout);
		response = FUNC7();
		if (FUNC10(response, &preimage.max_off))
			FUNC5("invalid cat-blob response: %s", response);
		FUNC4(preimage.max_off, 1);
	}
	if (old_mode == S_IFLNK) {
		FUNC13(&preimage.buf, "link ");
		FUNC4(preimage.max_off, FUNC15("link "));
		preimage.max_off += FUNC15("link ");
		FUNC4(preimage.max_off, 1);
	}
	if (FUNC16(input, len, &preimage, out))
		FUNC5("cannot apply delta");
	if (old_data) {
		/* Read the remainder of preimage and trailing newline. */
		FUNC1(!FUNC12(preimage.max_off, 1));
		preimage.max_off++;	/* room for newline */
		if (FUNC9(&preimage, preimage.max_off - 1, 1))
			FUNC5("cannot seek to end of input");
		if (preimage.buf.buf[0] != '\n')
			FUNC5("missing newline after cat-blob response");
	}
	ret = FUNC2(&postimage);
	if (ret < 0)
		FUNC5("cannot read temporary file for blob retrieval");
	FUNC14(&preimage.buf);
	return ret;
}