#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * values; int /*<<< orphan*/  total; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ Meter ;

/* Variables and functions */
 int /*<<< orphan*/ * CRT_colors ; 
 size_t METER_TEXT ; 
 size_t METER_VALUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(Object* cast, RichString* out) {
   char buffer[50];
   Meter* this = (Meter*)cast;
   FUNC2(out, CRT_colors[METER_TEXT], ":");
   FUNC0(buffer, this->total, 50);
   FUNC1(out, CRT_colors[METER_VALUE], buffer);
   FUNC0(buffer, this->values[0], 50);
   FUNC1(out, CRT_colors[METER_TEXT], " used:");
   FUNC1(out, CRT_colors[METER_VALUE], buffer);
}