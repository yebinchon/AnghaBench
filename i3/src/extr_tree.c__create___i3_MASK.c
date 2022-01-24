#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int width; int height; } ;
struct TYPE_9__ {int num; int /*<<< orphan*/  fullscreen_mode; void* layout; void* name; int /*<<< orphan*/  type; TYPE_1__ rect; } ;
typedef  TYPE_2__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  CF_OUTPUT ; 
 int /*<<< orphan*/  CT_CON ; 
 int /*<<< orphan*/  CT_OUTPUT ; 
 int /*<<< orphan*/  CT_WORKSPACE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* L_OUTPUT ; 
 void* L_SPLITH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * croot ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 

__attribute__((used)) static Con *FUNC7(void) {
    Con *__i3 = FUNC4(croot, NULL);
    FUNC1(__i3->name);
    __i3->name = FUNC5("__i3");
    __i3->type = CT_OUTPUT;
    __i3->layout = L_OUTPUT;
    FUNC3(croot);
    FUNC6(__i3, "[i3 con] pseudo-output __i3");
    /* For retaining the correct position/size of a scratchpad window, the
     * dimensions of the real outputs should be multiples of the __i3
     * pseudo-output. Ensuring that is the job of scratchpad_fix_resolution()
     * which gets called after this function and after detecting all the
     * outputs (or whenever an output changes). */
    __i3->rect.width = 1280;
    __i3->rect.height = 1024;

    /* Add a content container. */
    FUNC0("adding main content container\n");
    Con *content = FUNC4(NULL, NULL);
    content->type = CT_CON;
    FUNC1(content->name);
    content->name = FUNC5("content");
    content->layout = L_SPLITH;

    FUNC6(content, "[i3 con] content __i3");
    FUNC2(content, __i3, false);

    /* Attach the __i3_scratch workspace. */
    Con *ws = FUNC4(NULL, NULL);
    ws->type = CT_WORKSPACE;
    ws->num = -1;
    ws->name = FUNC5("__i3_scratch");
    ws->layout = L_SPLITH;
    FUNC2(ws, content, false);
    FUNC6(ws, "[i3 con] workspace __i3_scratch");
    ws->fullscreen_mode = CF_OUTPUT;

    return __i3;
}