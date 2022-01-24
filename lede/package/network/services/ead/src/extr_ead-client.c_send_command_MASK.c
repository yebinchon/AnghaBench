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
struct ead_msg_cmd {scalar_t__ data; void* timeout; void* type; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EAD_CMD_NORMAL ; 
 struct ead_msg_cmd* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EAD_TYPE_RESULT_CMD ; 
 int /*<<< orphan*/  EAD_TYPE_SEND_CMD ; 
 struct ead_msg_cmd* cmd ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  handle_cmd_data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 TYPE_1__* msg ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC7(const char *command)
{
	struct ead_msg_cmd *cmd = FUNC0(msg, cmd);

	msg->type = FUNC2(EAD_TYPE_SEND_CMD);
	cmd->type = FUNC3(EAD_CMD_NORMAL);
	cmd->timeout = FUNC3(10);
	FUNC6((char *)cmd->data, command, 1024);
	FUNC1(msg, sizeof(struct ead_msg_cmd) + FUNC5(command) + 1);
	return FUNC4(EAD_TYPE_RESULT_CMD, handle_cmd_data, 1);
}