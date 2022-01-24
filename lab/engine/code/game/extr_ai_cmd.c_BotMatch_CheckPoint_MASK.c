#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
typedef  int /*<<< orphan*/  netname ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_10__ {int /*<<< orphan*/ * origin; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; TYPE_1__ goal; struct TYPE_11__* prev; struct TYPE_11__* next; int /*<<< orphan*/  inuse; } ;
typedef  TYPE_2__ bot_waypoint_t ;
struct TYPE_12__ {int /*<<< orphan*/  cs; TYPE_2__* checkpoints; } ;
typedef  TYPE_3__ bot_state_t ;
typedef  int /*<<< orphan*/  bot_match_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (char*,double*,int) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,char*) ; 
 int FUNC4 (double*) ; 
 int /*<<< orphan*/  CHAT_TELL ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_MESSAGE_SIZE ; 
 int /*<<< orphan*/  NAME ; 
 int /*<<< orphan*/  NETNAME ; 
 int /*<<< orphan*/  POSITION ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (double*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,double*,double*,double*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 

void FUNC12(bot_state_t *bs, bot_match_t *match) {
	int areanum, client;
	char buf[MAX_MESSAGE_SIZE];
	char netname[MAX_MESSAGE_SIZE];
	vec3_t position;
	bot_waypoint_t *cp;

	if (!FUNC7()) return;
	//
	FUNC11(match, POSITION, buf, MAX_MESSAGE_SIZE);
	FUNC8(position);
	//
	FUNC11(match, NETNAME, netname, sizeof(netname));
	client = FUNC5(netname);
	//BotGPSToPosition(buf, position);
	FUNC9(buf, "%f %f %f", &position[0], &position[1], &position[2]);
	position[2] += 0.5;
	areanum = FUNC4(position);
	if (!areanum) {
		if (FUNC1(bs, match)) {
			FUNC0(bs, "checkpoint_invalid", NULL);
			FUNC10(bs->cs, client, CHAT_TELL);
		}
		return;
	}
	//
	FUNC11(match, NAME, buf, MAX_MESSAGE_SIZE);
	//check if there already exists a checkpoint with this name
	cp = FUNC3(bs->checkpoints, buf);
	if (cp) {
		if (cp->next) cp->next->prev = cp->prev;
		if (cp->prev) cp->prev->next = cp->next;
		else bs->checkpoints = cp->next;
		cp->inuse = qfalse;
	}
	//create a new check point
	cp = FUNC2(buf, position, areanum);
	//add the check point to the bot's known chech points
	cp->next = bs->checkpoints;
	if (bs->checkpoints) bs->checkpoints->prev = cp;
	bs->checkpoints = cp;
	//
	if (FUNC1(bs, match)) {
		FUNC6(buf, sizeof(buf), "%1.0f %1.0f %1.0f", cp->goal.origin[0],
													cp->goal.origin[1],
													cp->goal.origin[2]);

		FUNC0(bs, "checkpoint_confirm", cp->name, buf, NULL);
		FUNC10(bs->cs, client, CHAT_TELL);
	}
}