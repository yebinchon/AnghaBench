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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bot_state_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ *,int,int) ;scalar_t__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int SAY_ALL ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*) ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* voiceCommands ; 

int FUNC6(bot_state_t *bs, int mode, char *voiceChat) {
	int i, clientNum;
	//int voiceOnly, color;
	char *ptr, buf[MAX_MESSAGE_SIZE], *cmd;

	if (!FUNC3()) {
		return qfalse;
	}

	if ( mode == SAY_ALL ) {
		return qfalse;	// don't do anything with voice chats to everyone
	}

	FUNC2(buf, voiceChat, sizeof(buf));
	cmd = buf;
	for (; *cmd && *cmd > ' '; cmd++);
	while (*cmd && *cmd <= ' ') *cmd++ = '\0';
	//voiceOnly = atoi(ptr);
	for (ptr = cmd; *cmd && *cmd > ' '; cmd++);
	while (*cmd && *cmd <= ' ') *cmd++ = '\0';
	clientNum = FUNC4(ptr);
	for (; *cmd && *cmd > ' '; cmd++);
	while (*cmd && *cmd <= ' ') *cmd++ = '\0';
	//color = atoi(ptr);

	if (!FUNC0(bs, clientNum)) {
		return qfalse;
	}

	for (i = 0; voiceCommands[i].cmd; i++) {
		if (!FUNC1(cmd, voiceCommands[i].cmd)) {
			voiceCommands[i].func(bs, clientNum, mode);
			return qtrue;
		}
	}
	return qfalse;
}