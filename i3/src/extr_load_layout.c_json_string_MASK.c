#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pending_marks {int dummy; } ;
struct TYPE_9__ {void* title; void* window_role; void* instance; void* class; } ;
struct TYPE_8__ {char* name; char* title_format; char* sticky_group; int current_border_width; int /*<<< orphan*/  scratchpad_state; int /*<<< orphan*/  floating; void* last_split_layout; void* workspace_layout; void* layout; int /*<<< orphan*/  type; void* border_style; } ;
struct TYPE_7__ {TYPE_4__* con_to_be_marked; int /*<<< orphan*/  mark; } ;

/* Variables and functions */
 void* BS_NONE ; 
 void* BS_NORMAL ; 
 void* BS_PIXEL ; 
 int /*<<< orphan*/  CT_CON ; 
 int /*<<< orphan*/  CT_DOCKAREA ; 
 int /*<<< orphan*/  CT_FLOATING_CON ; 
 int /*<<< orphan*/  CT_OUTPUT ; 
 int /*<<< orphan*/  CT_ROOT ; 
 int /*<<< orphan*/  CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FLOATING_AUTO_OFF ; 
 int /*<<< orphan*/  FLOATING_AUTO_ON ; 
 int /*<<< orphan*/  FLOATING_USER_OFF ; 
 int /*<<< orphan*/  FLOATING_USER_ON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 void* L_DEFAULT ; 
 void* L_DOCKAREA ; 
 void* L_OUTPUT ; 
 void* L_SPLITH ; 
 void* L_SPLITV ; 
 void* L_STACKED ; 
 void* L_TABBED ; 
 int /*<<< orphan*/  MM_REPLACE ; 
 int /*<<< orphan*/  SCRATCHPAD_CHANGED ; 
 int /*<<< orphan*/  SCRATCHPAD_FRESH ; 
 int /*<<< orphan*/  SCRATCHPAD_NONE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_5__* current_swallow ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_4__* json_node ; 
 char* last_key ; 
 TYPE_1__* marks ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned char const*,size_t) ; 
 int num_marks ; 
 scalar_t__ parsing_marks ; 
 scalar_t__ parsing_swallows ; 
 int /*<<< orphan*/  previous_workspace_name ; 
 void* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char**,char*,int,unsigned char const*) ; 
 void* FUNC9 (size_t,int) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,size_t) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int swallow_is_empty ; 

__attribute__((used)) static int FUNC14(void *ctx, const unsigned char *val, size_t len) {
    FUNC3("string: %.*s for key %s\n", (int)len, val, last_key);
    if (parsing_swallows) {
        char *sval;
        FUNC8(&sval, "%.*s", len, val);
        if (FUNC13(last_key, "class") == 0) {
            current_swallow->class = FUNC7(sval);
            swallow_is_empty = false;
        } else if (FUNC13(last_key, "instance") == 0) {
            current_swallow->instance = FUNC7(sval);
            swallow_is_empty = false;
        } else if (FUNC13(last_key, "window_role") == 0) {
            current_swallow->window_role = FUNC7(sval);
            swallow_is_empty = false;
        } else if (FUNC13(last_key, "title") == 0) {
            current_swallow->title = FUNC7(sval);
            swallow_is_empty = false;
        } else {
            FUNC1("swallow key %s unknown\n", last_key);
        }
        FUNC5(sval);
    } else if (parsing_marks) {
        char *mark;
        FUNC8(&mark, "%.*s", (int)len, val);

        marks = FUNC10(marks, (++num_marks) * sizeof(struct pending_marks));
        marks[num_marks - 1].mark = FUNC11(mark);
        marks[num_marks - 1].con_to_be_marked = json_node;
    } else {
        if (FUNC13(last_key, "name") == 0) {
            json_node->name = FUNC9(len + 1, 1);
            FUNC6(json_node->name, val, len);
        } else if (FUNC13(last_key, "title_format") == 0) {
            json_node->title_format = FUNC9(len + 1, 1);
            FUNC6(json_node->title_format, val, len);
        } else if (FUNC13(last_key, "sticky_group") == 0) {
            json_node->sticky_group = FUNC9(len + 1, 1);
            FUNC6(json_node->sticky_group, val, len);
            FUNC3("sticky_group of this container is %s\n", json_node->sticky_group);
        } else if (FUNC13(last_key, "orientation") == 0) {
            /* Upgrade path from older versions of i3 (doing an inplace restart
             * to a newer version):
             * "orientation" is dumped before "layout". Therefore, we store
             * whether the orientation was horizontal or vertical in the
             * last_split_layout. When we then encounter layout == "default",
             * we will use the last_split_layout as layout instead. */
            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);
            if (FUNC13(buf, "none") == 0 ||
                FUNC13(buf, "horizontal") == 0)
                json_node->last_split_layout = L_SPLITH;
            else if (FUNC13(buf, "vertical") == 0)
                json_node->last_split_layout = L_SPLITV;
            else
                FUNC3("Unhandled orientation: %s\n", buf);
            FUNC5(buf);
        } else if (FUNC13(last_key, "border") == 0) {
            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);
            if (FUNC13(buf, "none") == 0)
                json_node->border_style = BS_NONE;
            else if (FUNC13(buf, "1pixel") == 0) {
                json_node->border_style = BS_PIXEL;
                json_node->current_border_width = 1;
            } else if (FUNC13(buf, "pixel") == 0)
                json_node->border_style = BS_PIXEL;
            else if (FUNC13(buf, "normal") == 0)
                json_node->border_style = BS_NORMAL;
            else
                FUNC3("Unhandled \"border\": %s\n", buf);
            FUNC5(buf);
        } else if (FUNC13(last_key, "type") == 0) {
            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);
            if (FUNC13(buf, "root") == 0)
                json_node->type = CT_ROOT;
            else if (FUNC13(buf, "output") == 0)
                json_node->type = CT_OUTPUT;
            else if (FUNC13(buf, "con") == 0)
                json_node->type = CT_CON;
            else if (FUNC13(buf, "floating_con") == 0)
                json_node->type = CT_FLOATING_CON;
            else if (FUNC13(buf, "workspace") == 0)
                json_node->type = CT_WORKSPACE;
            else if (FUNC13(buf, "dockarea") == 0)
                json_node->type = CT_DOCKAREA;
            else
                FUNC3("Unhandled \"type\": %s\n", buf);
            FUNC5(buf);
        } else if (FUNC13(last_key, "layout") == 0) {
            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);
            if (FUNC13(buf, "default") == 0)
                /* This set above when we read "orientation". */
                json_node->layout = json_node->last_split_layout;
            else if (FUNC13(buf, "stacked") == 0)
                json_node->layout = L_STACKED;
            else if (FUNC13(buf, "tabbed") == 0)
                json_node->layout = L_TABBED;
            else if (FUNC13(buf, "dockarea") == 0)
                json_node->layout = L_DOCKAREA;
            else if (FUNC13(buf, "output") == 0)
                json_node->layout = L_OUTPUT;
            else if (FUNC13(buf, "splith") == 0)
                json_node->layout = L_SPLITH;
            else if (FUNC13(buf, "splitv") == 0)
                json_node->layout = L_SPLITV;
            else
                FUNC3("Unhandled \"layout\": %s\n", buf);
            FUNC5(buf);
        } else if (FUNC13(last_key, "workspace_layout") == 0) {
            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);
            if (FUNC13(buf, "default") == 0)
                json_node->workspace_layout = L_DEFAULT;
            else if (FUNC13(buf, "stacked") == 0)
                json_node->workspace_layout = L_STACKED;
            else if (FUNC13(buf, "tabbed") == 0)
                json_node->workspace_layout = L_TABBED;
            else
                FUNC3("Unhandled \"workspace_layout\": %s\n", buf);
            FUNC5(buf);
        } else if (FUNC13(last_key, "last_split_layout") == 0) {
            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);
            if (FUNC13(buf, "splith") == 0)
                json_node->last_split_layout = L_SPLITH;
            else if (FUNC13(buf, "splitv") == 0)
                json_node->last_split_layout = L_SPLITV;
            else
                FUNC3("Unhandled \"last_splitlayout\": %s\n", buf);
            FUNC5(buf);
        } else if (FUNC13(last_key, "mark") == 0) {
            FUNC0("Found deprecated key \"mark\".\n");

            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);

            FUNC4(json_node, buf, MM_REPLACE);
        } else if (FUNC13(last_key, "floating") == 0) {
            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);
            if (FUNC13(buf, "auto_off") == 0)
                json_node->floating = FLOATING_AUTO_OFF;
            else if (FUNC13(buf, "auto_on") == 0)
                json_node->floating = FLOATING_AUTO_ON;
            else if (FUNC13(buf, "user_off") == 0)
                json_node->floating = FLOATING_USER_OFF;
            else if (FUNC13(buf, "user_on") == 0)
                json_node->floating = FLOATING_USER_ON;
            FUNC5(buf);
        } else if (FUNC13(last_key, "scratchpad_state") == 0) {
            char *buf = NULL;
            FUNC8(&buf, "%.*s", (int)len, val);
            if (FUNC13(buf, "none") == 0)
                json_node->scratchpad_state = SCRATCHPAD_NONE;
            else if (FUNC13(buf, "fresh") == 0)
                json_node->scratchpad_state = SCRATCHPAD_FRESH;
            else if (FUNC13(buf, "changed") == 0)
                json_node->scratchpad_state = SCRATCHPAD_CHANGED;
            FUNC5(buf);
        } else if (FUNC13(last_key, "previous_workspace_name") == 0) {
            FUNC2(previous_workspace_name);
            previous_workspace_name = FUNC12((const char *)val, len);
        }
    }
    return 1;
}