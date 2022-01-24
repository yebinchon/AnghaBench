#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {void* length; } ;
struct TYPE_5__ {void* length; void* hsn; void* tsn; } ;
struct TYPE_4__ {void* length; } ;
struct opal_header {TYPE_3__ cp; TYPE_2__ pkt; TYPE_1__ subpkt; } ;
struct opal_dev {int pos; scalar_t__* cmd; } ;

/* Variables and functions */
 int EFAULT ; 
 int ERANGE ; 
 int IO_BUFFER_LENGTH ; 
 int /*<<< orphan*/  OPAL_ENDLIST ; 
 int /*<<< orphan*/  OPAL_ENDOFDATA ; 
 int /*<<< orphan*/  OPAL_STARTLIST ; 
 int /*<<< orphan*/  FUNC0 (int*,struct opal_dev*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct opal_dev *cmd, u32 hsn, u32 tsn)
{
	struct opal_header *hdr;
	int err = 0;

	/*
	 * Close the parameter list opened from cmd_start.
	 * The number of bytes added must be equal to
	 * CMD_FINALIZE_BYTES_NEEDED.
	 */
	FUNC0(&err, cmd, OPAL_ENDLIST);

	FUNC0(&err, cmd, OPAL_ENDOFDATA);
	FUNC0(&err, cmd, OPAL_STARTLIST);
	FUNC0(&err, cmd, 0);
	FUNC0(&err, cmd, 0);
	FUNC0(&err, cmd, 0);
	FUNC0(&err, cmd, OPAL_ENDLIST);

	if (err) {
		FUNC2("Error finalizing command.\n");
		return -EFAULT;
	}

	hdr = (struct opal_header *) cmd->cmd;

	hdr->pkt.tsn = FUNC1(tsn);
	hdr->pkt.hsn = FUNC1(hsn);

	hdr->subpkt.length = FUNC1(cmd->pos - sizeof(*hdr));
	while (cmd->pos % 4) {
		if (cmd->pos >= IO_BUFFER_LENGTH) {
			FUNC2("Error: Buffer overrun\n");
			return -ERANGE;
		}
		cmd->cmd[cmd->pos++] = 0;
	}
	hdr->pkt.length = FUNC1(cmd->pos - sizeof(hdr->cp) -
				      sizeof(hdr->pkt));
	hdr->cp.length = FUNC1(cmd->pos - sizeof(hdr->cp));

	return 0;
}