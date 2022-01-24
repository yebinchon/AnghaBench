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
struct packet_command {int* cmd; int buflen; } ;
struct gdromtoc {int dummy; } ;
struct TYPE_2__ {int pending; int status; int /*<<< orphan*/  cd_info; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GDROM_DATA_REG ; 
 int /*<<< orphan*/  GDROM_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  command_queue ; 
 TYPE_1__ gd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct packet_command*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gdromtoc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct packet_command*) ; 
 struct packet_command* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gdromtoc *toc, int session)
{
	int tocsize;
	struct packet_command *toc_command;
	int err = 0;

	toc_command = FUNC3(sizeof(struct packet_command), GFP_KERNEL);
	if (!toc_command)
		return -ENOMEM;
	tocsize = sizeof(struct gdromtoc);
	toc_command->cmd[0] = 0x14;
	toc_command->cmd[1] = session;
	toc_command->cmd[3] = tocsize >> 8;
	toc_command->cmd[4] = tocsize & 0xff;
	toc_command->buflen = tocsize;
	if (gd.pending) {
		err = -EBUSY;
		goto cleanup_readtoc_final;
	}
	gd.pending = 1;
	FUNC0(gd.cd_info, toc_command);
	FUNC4(command_queue, gd.pending == 0,
		GDROM_DEFAULT_TIMEOUT);
	if (gd.pending) {
		err = -EINVAL;
		goto cleanup_readtoc;
	}
	FUNC1(GDROM_DATA_REG, toc, tocsize/2);
	if (gd.status & 0x01)
		err = -EINVAL;

cleanup_readtoc:
	gd.pending = 0;
cleanup_readtoc_final:
	FUNC2(toc_command);
	return err;
}