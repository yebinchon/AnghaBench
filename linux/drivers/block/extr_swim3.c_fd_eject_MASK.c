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
struct floppy_state {int ejected; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_IN ; 
 int EINTR ; 
 int /*<<< orphan*/  EJECT ; 
 int /*<<< orphan*/  RELAX ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  ejecting ; 
 int FUNC0 (struct floppy_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct floppy_state*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct floppy_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct floppy_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct floppy_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct floppy_state *fs)
{
	int err, n;

	err = FUNC0(fs, ejecting, 1);
	if (err)
		return err;
	FUNC4(fs, EJECT);
	for (n = 20; n > 0; --n) {
		if (FUNC3(current)) {
			err = -EINTR;
			break;
		}
		FUNC6(fs, RELAX);
		FUNC2(1);
		if (FUNC5(fs, DISK_IN) == 0)
			break;
	}
	FUNC6(fs, RELAX);
	FUNC7(150);
	fs->ejected = 1;
	FUNC1(fs);
	return err;
}