#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ integer; } ;
struct TYPE_4__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bot_interbreed ; 
 TYPE_3__ bot_interbreedcycle ; 
 scalar_t__ bot_interbreedmatchcount ; 
 TYPE_1__ bot_interbreedwrite ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(void) {

	if (!bot_interbreed) return;
	bot_interbreedmatchcount++;
	if (bot_interbreedmatchcount >= bot_interbreedcycle.integer) {
		bot_interbreedmatchcount = 0;
		//
		FUNC4(&bot_interbreedwrite);
		if (FUNC2(bot_interbreedwrite.string)) {
			FUNC1(bot_interbreedwrite.string);
			FUNC3("bot_interbreedwrite", "");
		}
		FUNC0();
	}
}