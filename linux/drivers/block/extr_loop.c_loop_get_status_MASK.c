#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {int dummy; } ;
struct loop_info64 {void* lo_rdevice; int /*<<< orphan*/  lo_inode; void* lo_device; int /*<<< orphan*/  lo_encrypt_key; scalar_t__ lo_encrypt_key_size; int /*<<< orphan*/  lo_encrypt_type; int /*<<< orphan*/  lo_crypt_name; int /*<<< orphan*/  lo_file_name; int /*<<< orphan*/  lo_flags; int /*<<< orphan*/  lo_sizelimit; int /*<<< orphan*/  lo_offset; int /*<<< orphan*/  lo_number; } ;
struct loop_device {scalar_t__ lo_state; TYPE_2__* lo_backing_file; scalar_t__ lo_encrypt_key_size; int /*<<< orphan*/  lo_encrypt_key; TYPE_1__* lo_encryption; int /*<<< orphan*/  lo_crypt_name; int /*<<< orphan*/  lo_file_name; int /*<<< orphan*/  lo_flags; int /*<<< orphan*/  lo_sizelimit; int /*<<< orphan*/  lo_offset; int /*<<< orphan*/  lo_number; } ;
struct kstat {int /*<<< orphan*/  rdev; int /*<<< orphan*/  ino; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct path f_path; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_STATX_SYNC_AS_STAT ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENXIO ; 
 scalar_t__ LO_NAME_SIZE ; 
 scalar_t__ Lo_bound ; 
 int /*<<< orphan*/  STATX_INO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loop_ctl_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct loop_info64*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct path*) ; 
 int /*<<< orphan*/  FUNC7 (struct path*) ; 
 int FUNC8 (struct path*,struct kstat*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct loop_device *lo, struct loop_info64 *info)
{
	struct path path;
	struct kstat stat;
	int ret;

	ret = FUNC4(&loop_ctl_mutex);
	if (ret)
		return ret;
	if (lo->lo_state != Lo_bound) {
		FUNC5(&loop_ctl_mutex);
		return -ENXIO;
	}

	FUNC3(info, 0, sizeof(*info));
	info->lo_number = lo->lo_number;
	info->lo_offset = lo->lo_offset;
	info->lo_sizelimit = lo->lo_sizelimit;
	info->lo_flags = lo->lo_flags;
	FUNC2(info->lo_file_name, lo->lo_file_name, LO_NAME_SIZE);
	FUNC2(info->lo_crypt_name, lo->lo_crypt_name, LO_NAME_SIZE);
	info->lo_encrypt_type =
		lo->lo_encryption ? lo->lo_encryption->number : 0;
	if (lo->lo_encrypt_key_size && FUNC0(CAP_SYS_ADMIN)) {
		info->lo_encrypt_key_size = lo->lo_encrypt_key_size;
		FUNC2(info->lo_encrypt_key, lo->lo_encrypt_key,
		       lo->lo_encrypt_key_size);
	}

	/* Drop loop_ctl_mutex while we call into the filesystem. */
	path = lo->lo_backing_file->f_path;
	FUNC6(&path);
	FUNC5(&loop_ctl_mutex);
	ret = FUNC8(&path, &stat, STATX_INO, AT_STATX_SYNC_AS_STAT);
	if (!ret) {
		info->lo_device = FUNC1(stat.dev);
		info->lo_inode = stat.ino;
		info->lo_rdevice = FUNC1(stat.rdev);
	}
	FUNC7(&path);
	return ret;
}