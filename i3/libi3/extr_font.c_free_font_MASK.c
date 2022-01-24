#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  info; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  pango_desc; TYPE_1__ xcb; } ;
struct TYPE_6__ {int type; TYPE_2__ specific; int /*<<< orphan*/  pattern; } ;

/* Variables and functions */
#define  FONT_TYPE_NONE 130 
#define  FONT_TYPE_PANGO 129 
#define  FONT_TYPE_XCB 128 
 int /*<<< orphan*/  conn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* savedFont ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void) {
    /* if there is no saved font, simply return */
    if (savedFont == NULL)
        return;

    FUNC0(savedFont->pattern);
    switch (savedFont->type) {
        case FONT_TYPE_NONE:
            /* Nothing to do */
            break;
        case FONT_TYPE_XCB: {
            /* Close the font and free the info */
            FUNC2(conn, savedFont->specific.xcb.id);
            FUNC0(savedFont->specific.xcb.info);
            break;
        }
        case FONT_TYPE_PANGO:
            /* Free the font description */
            FUNC1(savedFont->specific.pango_desc);
            break;
    }

    savedFont = NULL;
}