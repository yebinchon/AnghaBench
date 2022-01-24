#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  y2; int /*<<< orphan*/  x2; int /*<<< orphan*/  x1; TYPE_2__* header; } ;
struct TYPE_10__ {TYPE_4__* scr; TYPE_1__* settings; } ;
struct TYPE_9__ {int /*<<< orphan*/  height; } ;
struct TYPE_8__ {int changed; } ;
typedef  int /*<<< orphan*/  Panel ;
typedef  TYPE_2__ Header ;
typedef  scalar_t__ HandlerResult ;
typedef  TYPE_3__ DisplayOptionsPanel ;
typedef  int /*<<< orphan*/  CheckItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ HANDLED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ IGNORED ; 
#define  KEY_ENTER 130 
#define  KEY_MOUSE 129 
#define  KEY_RECLICK 128 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HandlerResult FUNC7(Panel* super, int ch) {
   DisplayOptionsPanel* this = (DisplayOptionsPanel*) super;
   
   HandlerResult result = IGNORED;
   CheckItem* selected = (CheckItem*) FUNC5(super);

   switch(ch) {
   case 0x0a:
   case 0x0d:
   case KEY_ENTER:
   case KEY_MOUSE:
   case KEY_RECLICK:
   case ' ':
      FUNC1(selected, ! (FUNC0(selected)) );
      result = HANDLED;
   }

   if (result == HANDLED) {
      this->settings->changed = true;
      const Header* header = this->scr->header;
      FUNC2((Header*) header);
      FUNC4((Header*) header);
      FUNC3(header);
      FUNC6(this->scr, this->scr->x1, header->height, this->scr->x2, this->scr->y2);
   }
   return result;
}