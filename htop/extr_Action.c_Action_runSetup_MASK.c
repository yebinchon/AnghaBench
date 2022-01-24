#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  height; } ;
struct TYPE_10__ {scalar_t__ changed; } ;
typedef  TYPE_1__ Settings ;
typedef  int /*<<< orphan*/  ScreenManager ;
typedef  int /*<<< orphan*/  ProcessList ;
typedef  int /*<<< orphan*/  Panel ;
typedef  TYPE_2__ Header ;
typedef  int /*<<< orphan*/  CategoriesPanel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HORIZONTAL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_2__ const*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static void FUNC7(Settings* settings, const Header* header, ProcessList* pl) {
   ScreenManager* scr = FUNC5(0, header->height, 0, -1, HORIZONTAL, header, settings, true);
   CategoriesPanel* panelCategories = FUNC1(scr, settings, (Header*) header, pl);
   FUNC3(scr, (Panel*) panelCategories, 16);
   FUNC0(panelCategories);
   Panel* panelFocus;
   int ch;
   FUNC6(scr, &panelFocus, &ch);
   FUNC4(scr);
   if (settings->changed) {
      FUNC2(header);
   }
}