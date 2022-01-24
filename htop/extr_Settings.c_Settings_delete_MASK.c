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
struct TYPE_6__ {TYPE_1__* columns; struct TYPE_6__* fields; struct TYPE_6__* filename; } ;
struct TYPE_5__ {TYPE_2__* modes; int /*<<< orphan*/  names; } ;
typedef  TYPE_2__ Settings ;
typedef  int /*<<< orphan*/  MeterColumnSettings ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void FUNC2(Settings* this) {
   FUNC1(this->filename);
   FUNC1(this->fields);
   for (unsigned int i = 0; i < (sizeof(this->columns)/sizeof(MeterColumnSettings)); i++) {
      FUNC0(this->columns[i].names);
      FUNC1(this->columns[i].modes);
   }
   FUNC1(this);
}