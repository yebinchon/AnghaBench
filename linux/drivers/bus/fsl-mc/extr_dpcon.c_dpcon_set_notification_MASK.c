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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpcon_notification_cfg {int /*<<< orphan*/  user_ctx; int /*<<< orphan*/  priority; int /*<<< orphan*/  dpio_id; } ;
struct dpcon_cmd_set_notification {int /*<<< orphan*/  user_ctx; int /*<<< orphan*/  priority; int /*<<< orphan*/  dpio_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPCON_CMDID_SET_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC4(struct fsl_mc_io *mc_io,
			   u32 cmd_flags,
			   u16 token,
			   struct dpcon_notification_cfg *cfg)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpcon_cmd_set_notification *dpcon_cmd;

	/* prepare command */
	cmd.header = FUNC2(DPCON_CMDID_SET_NOTIFICATION,
					  cmd_flags,
					  token);
	dpcon_cmd = (struct dpcon_cmd_set_notification *)cmd.params;
	dpcon_cmd->dpio_id = FUNC0(cfg->dpio_id);
	dpcon_cmd->priority = cfg->priority;
	dpcon_cmd->user_ctx = FUNC1(cfg->user_ctx);

	/* send command to mc*/
	return FUNC3(mc_io, &cmd);
}