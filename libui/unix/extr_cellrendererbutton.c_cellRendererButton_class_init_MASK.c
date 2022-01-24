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
typedef  int /*<<< orphan*/  cellRendererButtonClass ;
struct TYPE_5__ {int /*<<< orphan*/  activate; int /*<<< orphan*/  render; int /*<<< orphan*/  get_aligned_area; int /*<<< orphan*/  get_preferred_height; int /*<<< orphan*/  get_preferred_height_for_width; int /*<<< orphan*/  get_preferred_width; int /*<<< orphan*/  get_request_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  get_property; int /*<<< orphan*/  set_property; int /*<<< orphan*/  finalize; int /*<<< orphan*/  dispose; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int G_PARAM_CONSTRUCT ; 
 int G_PARAM_READWRITE ; 
 int G_PARAM_STATIC_STRINGS ; 
 int /*<<< orphan*/  G_SIGNAL_RUN_LAST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  G_TYPE_NONE ; 
 int /*<<< orphan*/  G_TYPE_STRING ; 
 int /*<<< orphan*/  cellRendererButton_activate ; 
 int /*<<< orphan*/  cellRendererButton_dispose ; 
 int /*<<< orphan*/  cellRendererButton_finalize ; 
 int /*<<< orphan*/  cellRendererButton_get_aligned_area ; 
 int /*<<< orphan*/  cellRendererButton_get_preferred_height ; 
 int /*<<< orphan*/  cellRendererButton_get_preferred_height_for_width ; 
 int /*<<< orphan*/  cellRendererButton_get_preferred_width ; 
 int /*<<< orphan*/  cellRendererButton_get_property ; 
 int /*<<< orphan*/  cellRendererButton_get_request_mode ; 
 int /*<<< orphan*/  cellRendererButton_render ; 
 int /*<<< orphan*/  cellRendererButton_set_property ; 
 int /*<<< orphan*/  clickedSignal ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * props ; 

__attribute__((used)) static void FUNC6(cellRendererButtonClass *class)
{
	FUNC1(class)->dispose = cellRendererButton_dispose;
	FUNC1(class)->finalize = cellRendererButton_finalize;
	FUNC1(class)->set_property = cellRendererButton_set_property;
	FUNC1(class)->get_property = cellRendererButton_get_property;
	FUNC0(class)->get_request_mode = cellRendererButton_get_request_mode;
	FUNC0(class)->get_preferred_width = cellRendererButton_get_preferred_width;
	FUNC0(class)->get_preferred_height_for_width = cellRendererButton_get_preferred_height_for_width;
	FUNC0(class)->get_preferred_height = cellRendererButton_get_preferred_height;
	// don't provide a get_preferred_width_for_height()
	FUNC0(class)->get_aligned_area = cellRendererButton_get_aligned_area;
	// don't provide a get_size()
	FUNC0(class)->render = cellRendererButton_render;
	FUNC0(class)->activate = cellRendererButton_activate;
	// don't provide a start_editing()

	props[1] = FUNC4("text",
		"Text",
		"Button text",
		"",
		G_PARAM_READWRITE | G_PARAM_CONSTRUCT | G_PARAM_STATIC_STRINGS);
	FUNC3(FUNC1(class), 2, props);

	clickedSignal = FUNC5("clicked",
		FUNC2(class),
		G_SIGNAL_RUN_LAST,
		0,
		NULL, NULL, NULL,
		G_TYPE_NONE,
		1, G_TYPE_STRING);
}