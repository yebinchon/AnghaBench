#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* title; } ;
struct TYPE_6__ {TYPE_1__* settings; } ;
struct TYPE_5__ {int* fields; int sortKey; int /*<<< orphan*/  treeView; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  TYPE_2__ ProcessList ;
typedef  int ProcessField ;

/* Variables and functions */
 int /*<<< orphan*/ * CRT_colors ; 
 size_t PANEL_HEADER_FOCUS ; 
 size_t PANEL_SELECTION_FOCUS ; 
 TYPE_3__* Process_fields ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(ProcessList* this, RichString* header) {
   FUNC1(header);
   ProcessField* fields = this->settings->fields;
   for (int i = 0; fields[i]; i++) {
      const char* field = Process_fields[fields[i]].title;
      if (!field) field = "- ";
      if (!this->settings->treeView && this->settings->sortKey == fields[i])
         FUNC0(header, CRT_colors[PANEL_SELECTION_FOCUS], field);
      else
         FUNC0(header, CRT_colors[PANEL_HEADER_FOCUS], field);
   }
}