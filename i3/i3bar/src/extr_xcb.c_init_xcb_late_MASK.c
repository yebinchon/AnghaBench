#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ bar_height; scalar_t__ hide_on_modifier; scalar_t__ separator_symbol; int /*<<< orphan*/  tray_padding; } ;
struct TYPE_5__ {scalar_t__ height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ M_HIDE ; 
 scalar_t__ bar_height ; 
 TYPE_4__ config ; 
 TYPE_1__ font ; 
 scalar_t__ icon_size ; 
 TYPE_1__ FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  separator_symbol_width ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ws_voff_px ; 
 int /*<<< orphan*/  xcb_connection ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(char *fontname) {
    if (fontname == NULL)
        fontname = "-misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1";

    /* Load the font */
    font = FUNC1(fontname, true);
    FUNC5(&font);
    FUNC0("Calculated font-height: %d\n", font.height);

    /*
     * If the bar height was explicitly set, use it. Otherwise, calculate it
     * based on the font size.
     */
    if (config.bar_height <= 0)
        bar_height = font.height + 2 * FUNC2(ws_voff_px);
    else
        bar_height = config.bar_height;
    icon_size = bar_height - 2 * FUNC2(config.tray_padding);

    if (config.separator_symbol)
        separator_symbol_width = FUNC3(config.separator_symbol);

    FUNC6(xcb_connection);

    if (config.hide_on_modifier == M_HIDE)
        FUNC4();
}