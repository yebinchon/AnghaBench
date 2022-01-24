#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vector ;
struct TYPE_5__ {int /*<<< orphan*/ ** columns; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  MeterModeId ;
typedef  TYPE_1__ Meter ;
typedef  TYPE_2__ Header ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 

MeterModeId FUNC1(Header* this, int i, int column) {
   Vector* meters = this->columns[column];

   Meter* meter = (Meter*) FUNC0(meters, i);
   return meter->mode;
}