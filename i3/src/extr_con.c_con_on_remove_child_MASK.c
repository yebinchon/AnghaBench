#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ylength ;
typedef  int /*<<< orphan*/  yajl_gen ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  urgent; int /*<<< orphan*/  name; int /*<<< orphan*/  focus_head; TYPE_1__* parent; } ;
struct TYPE_12__ {scalar_t__ type; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 scalar_t__ CT_DOCKAREA ; 
 scalar_t__ CT_OUTPUT ; 
 scalar_t__ CT_ROOT ; 
 scalar_t__ CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DONT_KILL_WINDOW ; 
 int /*<<< orphan*/  I3_IPC_EVENT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  get_buf ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC12(Con *con) {
    FUNC0("on_remove_child\n");

    /* Every container 'above' (in the hierarchy) the workspace content should
     * not be closed when the last child was removed */
    if (con->type == CT_OUTPUT ||
        con->type == CT_ROOT ||
        con->type == CT_DOCKAREA ||
        (con->parent != NULL && con->parent->type == CT_OUTPUT)) {
        FUNC0("not handling, type = %d, name = %s\n", con->type, con->name);
        return;
    }

    /* For workspaces, close them only if they're not visible anymore */
    if (con->type == CT_WORKSPACE) {
        if (FUNC2(&(con->focus_head)) && !FUNC10(con)) {
            FUNC1("Closing old workspace (%p / %s), it is empty\n", con, con->name);
            yajl_gen gen = FUNC7("empty", con, NULL);
            FUNC9(con, DONT_KILL_WINDOW, false);

            const unsigned char *payload;
            ylength length;
            FUNC11(get_buf, &payload, &length);
            FUNC8("workspace", I3_IPC_EVENT_WORKSPACE, (const char *)payload);

            FUNC11(free);
        }
        return;
    }

    FUNC3(con);
    con->urgent = FUNC4(con);
    FUNC6(con);

    /* TODO: check if this container would swallow any other client and
     * don’t close it automatically. */
    int children = FUNC5(con);
    if (children == 0) {
        FUNC0("Container empty, closing\n");
        FUNC9(con, DONT_KILL_WINDOW, false);
        return;
    }
}