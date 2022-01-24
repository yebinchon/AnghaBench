#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec4_t ;
struct TYPE_5__ {int /*<<< orphan*/ * borderColor; int /*<<< orphan*/  flags; int /*<<< orphan*/ * foreColor; int /*<<< orphan*/ * backColor; } ;
struct TYPE_6__ {TYPE_1__ window; int /*<<< orphan*/  parent; } ;
typedef  TYPE_2__ itemDef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char**,char const**) ; 
 int /*<<< orphan*/  WINDOW_FORECOLORSET ; 

void FUNC5(itemDef_t *item, char **args) {
  const char *itemname;
  const char *name;
  vec4_t color;
  int i;
  vec4_t *out;
  // expecting type of color to set and 4 args for the color
  if (FUNC4(args, &itemname) && FUNC4(args, &name)) {
    itemDef_t *item2;
    int j;
    int count = FUNC2(item->parent, itemname);

    if (!FUNC0(args, &color)) {
      return;
    }

    for (j = 0; j < count; j++) {
      item2 = FUNC1(item->parent, j, itemname);
      if (item2 != NULL) {
        out = NULL;
        if (FUNC3(name, "backcolor") == 0) {
          out = &item2->window.backColor;
        } else if (FUNC3(name, "forecolor") == 0) {
          out = &item2->window.foreColor;
          item2->window.flags |= WINDOW_FORECOLORSET;
        } else if (FUNC3(name, "bordercolor") == 0) {
          out = &item2->window.borderColor;
        }

        if (out) {
          for (i = 0; i < 4; i++) {
            (*out)[i] = color[i];
          }
        }
      }
    }
  }
}