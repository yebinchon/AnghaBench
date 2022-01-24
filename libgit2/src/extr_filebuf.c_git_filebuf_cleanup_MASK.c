#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fd; scalar_t__ path_lock; scalar_t__ path_original; int /*<<< orphan*/  zs; scalar_t__ z_buf; scalar_t__ buffer; scalar_t__ compute_digest; int /*<<< orphan*/  digest; int /*<<< orphan*/  did_rename; scalar_t__ created_lock; scalar_t__ fd_is_open; } ;
typedef  TYPE_1__ git_filebuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7(git_filebuf *file)
{
	if (file->fd_is_open && file->fd >= 0)
		FUNC5(file->fd);

	if (file->created_lock && !file->did_rename && file->path_lock && FUNC3(file->path_lock))
		FUNC6(file->path_lock);

	if (file->compute_digest) {
		FUNC2(&file->digest);
		file->compute_digest = 0;
	}

	if (file->buffer)
		FUNC1(file->buffer);

	/* use the presence of z_buf to decide if we need to deflateEnd */
	if (file->z_buf) {
		FUNC1(file->z_buf);
		FUNC0(&file->zs);
	}

	if (file->path_original)
		FUNC1(file->path_original);
	if (file->path_lock)
		FUNC1(file->path_lock);

	FUNC4(file, 0x0, sizeof(git_filebuf));
	file->fd = -1;
}