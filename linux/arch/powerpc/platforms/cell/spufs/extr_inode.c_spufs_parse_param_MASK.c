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
struct spufs_sb_info {int debug; } ;
struct spufs_fs_context {int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct fs_parse_result {int uint_32; } ;
struct fs_parameter {int dummy; } ;
struct fs_context {struct spufs_sb_info* s_fs_info; struct spufs_fs_context* fs_private; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
#define  Opt_debug 131 
#define  Opt_gid 130 
#define  Opt_mode 129 
#define  Opt_uid 128 
 int S_IALLUGO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct fs_context*,int /*<<< orphan*/ *,struct fs_parameter*,struct fs_parse_result*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fs_context*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  spufs_fs_parameters ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fs_context *fc, struct fs_parameter *param)
{
	struct spufs_fs_context *ctx = fc->fs_private;
	struct spufs_sb_info *sbi = fc->s_fs_info;
	struct fs_parse_result result;
	kuid_t uid;
	kgid_t gid;
	int opt;

	opt = FUNC1(fc, &spufs_fs_parameters, param, &result);
	if (opt < 0)
		return opt;

	switch (opt) {
	case Opt_uid:
		uid = FUNC5(FUNC0(), result.uint_32);
		if (!FUNC6(uid))
			return FUNC3(fc, "Unknown uid");
		ctx->uid = uid;
		break;
	case Opt_gid:
		gid = FUNC4(FUNC0(), result.uint_32);
		if (!FUNC2(gid))
			return FUNC3(fc, "Unknown gid");
		ctx->gid = gid;
		break;
	case Opt_mode:
		ctx->mode = result.uint_32 & S_IALLUGO;
		break;
	case Opt_debug:
		sbi->debug = true;
		break;
	}

	return 0;
}