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
typedef  int /*<<< orphan*/  Panel ;
typedef  int /*<<< orphan*/  HandlerResult ;
typedef  int /*<<< orphan*/  CheckItem ;

/* Variables and functions */
 int /*<<< orphan*/  BREAK_LOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  HANDLED ; 
 int /*<<< orphan*/  IGNORED ; 
#define  KEY_ENTER 130 
#define  KEY_MOUSE 129 
#define  KEY_RECLICK 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HandlerResult FUNC3(Panel* this, int ch) {
   CheckItem* selected = (CheckItem*) FUNC2(this);
   switch(ch) {
   case KEY_MOUSE:
   case KEY_RECLICK:
   case ' ':
      FUNC1(selected, ! (FUNC0(selected)) );
      return HANDLED;
   case 0x0a:
   case 0x0d:
   case KEY_ENTER:
      return BREAK_LOOP;
   }
   return IGNORED;
}