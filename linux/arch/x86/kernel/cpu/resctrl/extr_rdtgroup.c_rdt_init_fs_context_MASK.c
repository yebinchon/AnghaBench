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
struct TYPE_2__ {int /*<<< orphan*/  magic; int /*<<< orphan*/  root; } ;
struct rdt_fs_context {TYPE_1__ kfc; } ;
struct fs_context {int global; int /*<<< orphan*/  user_ns; int /*<<< orphan*/ * ops; TYPE_1__* fs_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RDTGROUP_SUPER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct rdt_fs_context* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rdt_fs_context_ops ; 
 int /*<<< orphan*/  rdt_root ; 

__attribute__((used)) static int FUNC3(struct fs_context *fc)
{
	struct rdt_fs_context *ctx;

	ctx = FUNC1(sizeof(struct rdt_fs_context), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->kfc.root = rdt_root;
	ctx->kfc.magic = RDTGROUP_SUPER_MAGIC;
	fc->fs_private = &ctx->kfc;
	fc->ops = &rdt_fs_context_ops;
	FUNC2(fc->user_ns);
	fc->user_ns = FUNC0(&init_user_ns);
	fc->global = true;
	return 0;
}