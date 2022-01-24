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
struct floppy_state {int state; int req_cyl; int cur_cyl; int expect_cyl; int settle_time; int retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  TRACK_ZERO ; 
#define  do_transfer 133 
#define  idle 132 
#define  jogging 131 
#define  locating 130 
 int /*<<< orphan*/  FUNC0 (struct floppy_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct floppy_state*,int) ; 
#define  seeking 129 
 int /*<<< orphan*/  FUNC2 (struct floppy_state*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  settle_timeout ; 
#define  settling 128 
 int /*<<< orphan*/  FUNC3 (struct floppy_state*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct floppy_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct floppy_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(struct floppy_state *fs)
{
	for (;;) {
		FUNC4("  act loop, state=%d, req_cyl=%d, cur_cyl=%d\n",
			  fs->state, fs->req_cyl, fs->cur_cyl);

		switch (fs->state) {
		case idle:
			return;		/* XXX shouldn't get here */

		case locating:
			if (FUNC7(fs, TRACK_ZERO)) {
				FUNC4("%s", "    locate track 0\n");
				fs->cur_cyl = 0;
				if (fs->req_cyl == 0)
					fs->state = do_transfer;
				else
					fs->state = seeking;
				break;
			}
			FUNC0(fs);
			return;

		case seeking:
			if (fs->cur_cyl < 0) {
				fs->expect_cyl = -1;
				fs->state = locating;
				break;
			}
			if (fs->req_cyl == fs->cur_cyl) {
				FUNC8("%s", "Whoops, seeking 0\n");
				fs->state = do_transfer;
				break;
			}
			FUNC1(fs, fs->req_cyl - fs->cur_cyl);
			return;

		case settling:
			/* check for SEEK_COMPLETE after 30ms */
			fs->settle_time = (HZ + 32) / 33;
			FUNC2(fs, fs->settle_time, settle_timeout);
			return;

		case do_transfer:
			if (fs->cur_cyl != fs->req_cyl) {
				if (fs->retries > 5) {
					FUNC6("Wrong cylinder in transfer, want: %d got %d\n",
						  fs->req_cyl, fs->cur_cyl);
					FUNC5(fs, BLK_STS_IOERR, 0);
					fs->state = idle;
					return;
				}
				fs->state = seeking;
				break;
			}
			FUNC3(fs);
			return;

		case jogging:
			FUNC1(fs, -5);
			return;

		default:
			FUNC6("Unknown state %d\n", fs->state);
			return;
		}
	}
}