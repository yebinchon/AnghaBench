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
typedef  int /*<<< orphan*/  areaWidgetClass ;
struct TYPE_5__ {int /*<<< orphan*/  key_release_event; int /*<<< orphan*/  key_press_event; int /*<<< orphan*/  leave_notify_event; int /*<<< orphan*/  enter_notify_event; int /*<<< orphan*/  motion_notify_event; int /*<<< orphan*/  button_release_event; int /*<<< orphan*/  button_press_event; int /*<<< orphan*/  get_preferred_width; int /*<<< orphan*/  get_preferred_height; int /*<<< orphan*/  draw; int /*<<< orphan*/  size_allocate; } ;
struct TYPE_4__ {int /*<<< orphan*/  get_property; int /*<<< orphan*/  set_property; int /*<<< orphan*/  finalize; int /*<<< orphan*/  dispose; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int G_PARAM_CONSTRUCT_ONLY ; 
 int G_PARAM_STATIC_STRINGS ; 
 int G_PARAM_WRITABLE ; 
 int /*<<< orphan*/  areaWidget_button_press_event ; 
 int /*<<< orphan*/  areaWidget_button_release_event ; 
 int /*<<< orphan*/  areaWidget_dispose ; 
 int /*<<< orphan*/  areaWidget_draw ; 
 int /*<<< orphan*/  areaWidget_enter_notify_event ; 
 int /*<<< orphan*/  areaWidget_finalize ; 
 int /*<<< orphan*/  areaWidget_get_preferred_height ; 
 int /*<<< orphan*/  areaWidget_get_preferred_width ; 
 int /*<<< orphan*/  areaWidget_get_property ; 
 int /*<<< orphan*/  areaWidget_key_press_event ; 
 int /*<<< orphan*/  areaWidget_key_release_event ; 
 int /*<<< orphan*/  areaWidget_leave_notify_event ; 
 int /*<<< orphan*/  areaWidget_motion_notify_event ; 
 int /*<<< orphan*/  areaWidget_set_property ; 
 int /*<<< orphan*/  areaWidget_size_allocate ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  pArea ; 
 int /*<<< orphan*/  pspecArea ; 

__attribute__((used)) static void FUNC4(areaWidgetClass *class)
{
	FUNC1(class)->dispose = areaWidget_dispose;
	FUNC1(class)->finalize = areaWidget_finalize;
	FUNC1(class)->set_property = areaWidget_set_property;
	FUNC1(class)->get_property = areaWidget_get_property;

	FUNC0(class)->size_allocate = areaWidget_size_allocate;
	FUNC0(class)->draw = areaWidget_draw;
	FUNC0(class)->get_preferred_height = areaWidget_get_preferred_height;
	FUNC0(class)->get_preferred_width = areaWidget_get_preferred_width;
	FUNC0(class)->button_press_event = areaWidget_button_press_event;
	FUNC0(class)->button_release_event = areaWidget_button_release_event;
	FUNC0(class)->motion_notify_event = areaWidget_motion_notify_event;
	FUNC0(class)->enter_notify_event = areaWidget_enter_notify_event;
	FUNC0(class)->leave_notify_event = areaWidget_leave_notify_event;
	FUNC0(class)->key_press_event = areaWidget_key_press_event;
	FUNC0(class)->key_release_event = areaWidget_key_release_event;

	pspecArea = FUNC3("libui-area",
		"libui-area",
		"uiArea.",
		G_PARAM_WRITABLE | G_PARAM_CONSTRUCT_ONLY | G_PARAM_STATIC_STRINGS);
	FUNC2(FUNC1(class), pArea, pspecArea);
}