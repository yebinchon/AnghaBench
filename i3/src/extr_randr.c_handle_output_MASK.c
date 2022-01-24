#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_timestamp_t ;
typedef  scalar_t__ xcb_randr_output_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_screen_resources_current_reply_t ;
struct TYPE_16__ {scalar_t__ crtc; } ;
typedef  TYPE_2__ xcb_randr_get_output_info_reply_t ;
struct TYPE_15__ {scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; } ;
struct TYPE_17__ {int primary; int active; int to_be_disabled; int changed; TYPE_1__ rect; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  names_head; scalar_t__ id; } ;
typedef  TYPE_3__ xcb_randr_get_crtc_info_reply_t ;
typedef  int /*<<< orphan*/  xcb_randr_get_crtc_info_cookie_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
struct output_name {struct output_name* name; } ;
struct TYPE_18__ {scalar_t__ output; } ;
typedef  TYPE_3__ Output ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct output_name*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct output_name* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct output_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ XCB_NONE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 TYPE_3__* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  names ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  outputs ; 
 TYPE_8__* primary ; 
 int /*<<< orphan*/  FUNC12 (struct output_name**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int,int) ; 
 int FUNC14 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC19(xcb_connection_t *conn, xcb_randr_output_t id,
                          xcb_randr_get_output_info_reply_t *output,
                          xcb_timestamp_t cts,
                          xcb_randr_get_screen_resources_current_reply_t *res) {
    /* each CRT controller has a position in which we are interested in */
    xcb_randr_get_crtc_info_reply_t *crtc;

    Output *new = FUNC10(id);
    bool existing = (new != NULL);
    if (!existing) {
        new = FUNC13(1, sizeof(Output));
        FUNC4(&new->names_head);
    }
    new->id = id;
    new->primary = (primary && primary->output == id);
    while (!FUNC2(&new->names_head)) {
        FUNC1(FUNC3(&new->names_head)->name);
        struct output_name *old_head = FUNC3(&new->names_head);
        FUNC6(&new->names_head, names);
        FUNC1(old_head);
    }
    struct output_name *output_name = FUNC13(1, sizeof(struct output_name));
    FUNC12(&output_name->name, "%.*s",
              FUNC18(output),
              FUNC17(output));
    FUNC5(&new->names_head, output_name, names);

    FUNC0("found output with name %s\n", FUNC11(new));

    /* Even if no CRTC is used at the moment, we store the output so that
     * we do not need to change the list ever again (we only update the
     * position/size) */
    if (output->crtc == XCB_NONE) {
        if (!existing) {
            if (new->primary)
                FUNC7(&outputs, new, outputs);
            else
                FUNC8(&outputs, new, outputs);
        } else if (new->active)
            new->to_be_disabled = true;
        return;
    }

    xcb_randr_get_crtc_info_cookie_t icookie;
    icookie = FUNC15(conn, output->crtc, cts);
    if ((crtc = FUNC16(conn, icookie, NULL)) == NULL) {
        FUNC0("Skipping output %s: could not get CRTC (%p)\n",
             FUNC11(new), crtc);
        FUNC9(new);
        return;
    }

    bool updated = FUNC14(&(new->rect.x), crtc->x) |
                   FUNC14(&(new->rect.y), crtc->y) |
                   FUNC14(&(new->rect.width), crtc->width) |
                   FUNC14(&(new->rect.height), crtc->height);
    FUNC9(crtc);
    new->active = (new->rect.width != 0 && new->rect.height != 0);
    if (!new->active) {
        FUNC0("width/height 0/0, disabling output\n");
        return;
    }

    FUNC0("mode: %dx%d+%d+%d\n", new->rect.width, new->rect.height,
         new->rect.x, new->rect.y);

    /* If we don’t need to change an existing output or if the output
     * does not exist in the first place, the case is simple: we either
     * need to insert the new output or we are done. */
    if (!updated || !existing) {
        if (!existing) {
            if (new->primary)
                FUNC7(&outputs, new, outputs);
            else
                FUNC8(&outputs, new, outputs);
        }
        return;
    }

    new->changed = true;
}