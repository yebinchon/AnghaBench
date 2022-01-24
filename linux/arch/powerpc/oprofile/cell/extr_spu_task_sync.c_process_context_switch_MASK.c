#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct spu {unsigned int number; unsigned int pid; unsigned int tgid; } ;
struct TYPE_2__ {int ctx_sw_seen; } ;

/* Variables and functions */
 int ENOENT ; 
 unsigned int ESCAPE_CODE ; 
 unsigned int SPU_CTX_SWITCH_CODE ; 
 int /*<<< orphan*/  buffer_lock ; 
 unsigned long FUNC0 (struct spu*,unsigned int*,unsigned long*,unsigned long) ; 
 int FUNC1 (struct spu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* spu_buff ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct spu *spu, unsigned long objectId)
{
	unsigned long flags;
	int retval;
	unsigned int offset = 0;
	unsigned long spu_cookie = 0, app_dcookie;

	retval = FUNC1(spu, objectId);
	if (retval)
		goto out;

	/* Get dcookie first because a mutex_lock is taken in that
	 * code path, so interrupts must not be disabled.
	 */
	app_dcookie = FUNC0(spu, &offset, &spu_cookie, objectId);
	if (!app_dcookie || !spu_cookie) {
		retval  = -ENOENT;
		goto out;
	}

	/* Record context info in event buffer */
	FUNC3(&buffer_lock, flags);
	FUNC5(ESCAPE_CODE, spu->number);
	FUNC5(SPU_CTX_SWITCH_CODE, spu->number);
	FUNC5(spu->number, spu->number);
	FUNC5(spu->pid, spu->number);
	FUNC5(spu->tgid, spu->number);
	FUNC5(app_dcookie, spu->number);
	FUNC5(spu_cookie, spu->number);
	FUNC5(offset, spu->number);

	/* Set flag to indicate SPU PC data can now be written out.  If
	 * the SPU program counter data is seen before an SPU context
	 * record is seen, the postprocessing will fail.
	 */
	spu_buff[spu->number].ctx_sw_seen = 1;

	FUNC4(&buffer_lock, flags);
	FUNC2();	/* insure spu event buffer updates are written */
			/* don't want entries intermingled... */
out:
	return retval;
}