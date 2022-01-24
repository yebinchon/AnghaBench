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
struct sliding_view {int /*<<< orphan*/  buf; } ;
struct line_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 struct line_buffer LINE_BUFFER_INIT ; 
 struct sliding_view FUNC0 (struct line_buffer*,int) ; 
 scalar_t__ FUNC1 (struct line_buffer*) ; 
 scalar_t__ FUNC2 (struct line_buffer*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct line_buffer*,int /*<<< orphan*/ ,struct sliding_view*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_svnfe_usage ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv)
{
	struct line_buffer preimage = LINE_BUFFER_INIT;
	struct line_buffer delta = LINE_BUFFER_INIT;
	struct sliding_view preimage_view = FUNC0(&preimage, -1);

	if (argc != 5)
		FUNC7(test_svnfe_usage);

	if (FUNC2(&preimage, argv[2]))
		FUNC3("cannot open preimage");
	if (FUNC2(&delta, argv[3]))
		FUNC3("cannot open delta");
	if (FUNC6(&delta, (off_t) FUNC5(argv[4], NULL, 0),
					&preimage_view, stdout))
		return 1;
	if (FUNC1(&preimage))
		FUNC3("cannot close preimage");
	if (FUNC1(&delta))
		FUNC3("cannot close delta");
	FUNC4(&preimage_view.buf);
	return 0;
}