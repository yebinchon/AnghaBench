#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_3__ {int /*<<< orphan*/ ** columns; } ;
typedef  int /*<<< orphan*/  MeterModeId ;
typedef  int /*<<< orphan*/  Meter ;
typedef  TYPE_1__ Header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(Header* this, int i, MeterModeId mode, int column) {
   Vector* meters = this->columns[column];

   if (i >= FUNC2(meters))
      return;
   Meter* meter = (Meter*) FUNC1(meters, i);
   FUNC0(meter, mode);
}