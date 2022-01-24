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
struct hypfs_sb_info {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct fs_parse_result {int /*<<< orphan*/  uint_32; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {struct hypfs_sb_info* s_fs_info; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
#define  Opt_gid 129 
#define  Opt_uid 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct fs_context*,int /*<<< orphan*/ *,struct fs_parameter*,struct fs_parse_result*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hypfs_fs_parameters ; 
 int FUNC3 (struct fs_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fs_context *fc, struct fs_parameter *param)
{
	struct hypfs_sb_info *hypfs_info = fc->s_fs_info;
	struct fs_parse_result result;
	kuid_t uid;
	kgid_t gid;
	int opt;

	opt = FUNC1(fc, &hypfs_fs_parameters, param, &result);
	if (opt < 0)
		return opt;

	switch (opt) {
	case Opt_uid:
		uid = FUNC5(FUNC0(), result.uint_32);
		if (!FUNC6(uid))
			return FUNC3(fc, "Unknown uid");
		hypfs_info->uid = uid;
		break;
	case Opt_gid:
		gid = FUNC4(FUNC0(), result.uint_32);
		if (!FUNC2(gid))
			return FUNC3(fc, "Unknown gid");
		hypfs_info->gid = gid;
		break;
	}
	return 0;
}