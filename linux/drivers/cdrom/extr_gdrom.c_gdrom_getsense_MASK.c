#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct packet_command {int* cmd; int buflen; } ;
struct TYPE_5__ {int pending; int /*<<< orphan*/  cd_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GDROM_DATA_REG ; 
 int /*<<< orphan*/  GDROM_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  command_queue ; 
 TYPE_2__ gd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct packet_command*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,short**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct packet_command*) ; 
 struct packet_command* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (short*,short*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_1__* sense_texts ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(short *bufstring)
{
	struct packet_command *sense_command;
	short sense[5];
	int sense_key;
	int err = -EIO;

	sense_command = FUNC5(sizeof(struct packet_command), GFP_KERNEL);
	if (!sense_command)
		return -ENOMEM;
	sense_command->cmd[0] = 0x13;
	sense_command->cmd[4] = 10;
	sense_command->buflen = 10;
	/* even if something is pending try to get
	* the sense key if possible */
	if (gd.pending && !FUNC2()) {
		err = -EBUSY;
		goto cleanup_sense_final;
	}
	gd.pending = 1;
	FUNC1(gd.cd_info, sense_command);
	FUNC9(command_queue, gd.pending == 0,
		GDROM_DEFAULT_TIMEOUT);
	if (gd.pending)
		goto cleanup_sense;
	FUNC3(GDROM_DATA_REG, &sense, sense_command->buflen/2);
	if (sense[1] & 40) {
		FUNC8("Drive not ready - command aborted\n");
		goto cleanup_sense;
	}
	sense_key = sense[1] & 0x0F;
	if (sense_key < FUNC0(sense_texts))
		FUNC8("%s\n", sense_texts[sense_key].text);
	else
		FUNC7("Unknown sense key: %d\n", sense_key);
	if (bufstring) /* return addional sense data */
		FUNC6(bufstring, &sense[4], 2);
	if (sense_key < 2)
		err = 0;

cleanup_sense:
	gd.pending = 0;
cleanup_sense_final:
	FUNC4(sense_command);
	return err;
}