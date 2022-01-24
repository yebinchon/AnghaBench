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

/* Variables and functions */
 int /*<<< orphan*/  fetch_fsck_objects ; 
 int /*<<< orphan*/  fetch_pack_config_cb ; 
 int /*<<< orphan*/  fetch_unpack_limit ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prefer_ofs_delta ; 
 int /*<<< orphan*/  transfer_fsck_objects ; 
 int /*<<< orphan*/  transfer_unpack_limit ; 

__attribute__((used)) static void FUNC3(void)
{
	FUNC2("fetch.unpacklimit", &fetch_unpack_limit);
	FUNC2("transfer.unpacklimit", &transfer_unpack_limit);
	FUNC1("repack.usedeltabaseoffset", &prefer_ofs_delta);
	FUNC1("fetch.fsckobjects", &fetch_fsck_objects);
	FUNC1("transfer.fsckobjects", &transfer_fsck_objects);

	FUNC0(fetch_pack_config_cb, NULL);
}