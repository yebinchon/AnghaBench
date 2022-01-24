#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * columns; } ;
struct TYPE_7__ {int /*<<< orphan*/  scr; int /*<<< orphan*/  pl; TYPE_5__* header; int /*<<< orphan*/  settings; } ;
struct TYPE_6__ {struct TYPE_6__* leftNeighbor; struct TYPE_6__* rightNeighbor; } ;
typedef  int /*<<< orphan*/  Panel ;
typedef  TYPE_1__ MetersPanel ;
typedef  TYPE_2__ CategoriesPanel ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC3(CategoriesPanel* this) {
   MetersPanel* leftMeters = FUNC1(this->settings, "Left column", this->header->columns[0], this->scr);
   MetersPanel* rightMeters = FUNC1(this->settings, "Right column", this->header->columns[1], this->scr);
   leftMeters->rightNeighbor = rightMeters;
   rightMeters->leftNeighbor = leftMeters;
   Panel* availableMeters = (Panel*) FUNC0(this->settings, this->header, (Panel*) leftMeters, (Panel*) rightMeters, this->scr, this->pl);
   FUNC2(this->scr, (Panel*) leftMeters, 20);
   FUNC2(this->scr, (Panel*) rightMeters, 20);
   FUNC2(this->scr, availableMeters, -1);
}