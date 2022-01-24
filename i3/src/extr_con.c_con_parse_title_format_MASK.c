#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  placeholders ;
struct TYPE_7__ {char* name; char* value; } ;
typedef  TYPE_1__ placeholder_t ;
struct TYPE_8__ {char* class_class; char* class_instance; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ i3Window ;
typedef  int /*<<< orphan*/  i3String ;
struct TYPE_9__ {int /*<<< orphan*/ * title_format; TYPE_2__* window; } ;
typedef  TYPE_3__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_3__*) ; 
 int FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,size_t const) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const) ; 
 char* FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 

i3String *FUNC10(Con *con) {
    FUNC1(con->title_format != NULL);

    i3Window *win = con->window;

    /* We need to ensure that we only escape the window title if pango
     * is used by the current font. */
    const bool pango_markup = FUNC3();

    char *title;
    char *class;
    char *instance;
    if (win == NULL) {
        title = FUNC8(FUNC2(con));
        class = FUNC9("i3-frame");
        instance = FUNC9("i3-frame");
    } else {
        title = FUNC8(FUNC9((win->name == NULL) ? "" : FUNC5(win->name)));
        class = FUNC8(FUNC9((win->class_class == NULL) ? "" : win->class_class));
        instance = FUNC8(FUNC9((win->class_instance == NULL) ? "" : win->class_instance));
    }

    placeholder_t placeholders[] = {
        {.name = "%title", .value = title},
        {.name = "%class", .value = class},
        {.name = "%instance", .value = instance}};
    const size_t num = sizeof(placeholders) / sizeof(placeholder_t);

    char *formatted_str = FUNC4(con->title_format, &placeholders[0], num);
    i3String *formatted = FUNC6(formatted_str);
    FUNC7(formatted, pango_markup);
    FUNC0(formatted_str);

    for (size_t i = 0; i < num; i++) {
        FUNC0(placeholders[i].value);
    }

    return formatted;
}