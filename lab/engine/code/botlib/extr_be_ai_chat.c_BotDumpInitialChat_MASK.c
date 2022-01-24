#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* firstchatmessage; int /*<<< orphan*/  numchatmessages; int /*<<< orphan*/  name; struct TYPE_5__* next; } ;
typedef  TYPE_1__ bot_chattype_t ;
struct TYPE_6__ {int /*<<< orphan*/  chatmessage; struct TYPE_6__* next; } ;
typedef  TYPE_2__ bot_chatmessage_t ;
struct TYPE_7__ {TYPE_1__* types; } ;
typedef  TYPE_3__ bot_chat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(bot_chat_t *chat)
{
	bot_chattype_t *t;
	bot_chatmessage_t *m;

	FUNC0("{");
	for (t = chat->types; t; t = t->next)
	{
		FUNC0(" type \"%s\"", t->name);
		FUNC0(" {");
		FUNC0("  numchatmessages = %d", t->numchatmessages);
		for (m = t->firstchatmessage; m; m = m->next)
		{
			FUNC0("  \"%s\"", m->chatmessage);
		} //end for
		FUNC0(" }");
	} //end for
	FUNC0("}");
}