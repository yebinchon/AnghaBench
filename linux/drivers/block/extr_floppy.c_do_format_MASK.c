#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct format_descr {scalar_t__ track; scalar_t__ head; } ;
struct TYPE_5__ {scalar_t__ tracks; } ;
struct TYPE_4__ {scalar_t__ track; scalar_t__ head; int sect; int /*<<< orphan*/  fmt_gap; } ;

/* Variables and functions */
 TYPE_3__* DP ; 
 int EINTR ; 
 int EINVAL ; 
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* _floppy ; 
 int /*<<< orphan*/ * cont ; 
 scalar_t__* errors ; 
 int /*<<< orphan*/  format_cont ; 
 scalar_t__ format_errors ; 
 struct format_descr format_req ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  redo_format ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(int drive, struct format_descr *tmp_format_req)
{
	int ret;

	if (FUNC1(drive))
		return -EINTR;

	FUNC3(drive);
	if (!_floppy ||
	    _floppy->track > DP->tracks ||
	    tmp_format_req->track >= _floppy->track ||
	    tmp_format_req->head >= _floppy->head ||
	    (_floppy->sect << 2) % (1 << FUNC0(_floppy)) ||
	    !_floppy->fmt_gap) {
		FUNC2();
		return -EINVAL;
	}
	format_req = *tmp_format_req;
	format_errors = 0;
	cont = &format_cont;
	errors = &format_errors;
	ret = FUNC4(redo_format, true);
	if (ret == -EINTR)
		return -EINTR;
	FUNC2();
	return ret;
}