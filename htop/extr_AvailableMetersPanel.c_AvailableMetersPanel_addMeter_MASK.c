#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  currentBar; } ;
typedef  TYPE_1__ Panel ;
typedef  int /*<<< orphan*/  Object ;
typedef  int /*<<< orphan*/  MetersPanel ;
typedef  int /*<<< orphan*/  MeterClass ;
typedef  int /*<<< orphan*/  Meter ;
typedef  int /*<<< orphan*/  Header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static inline void FUNC7(Header* header, Panel* panel, MeterClass* type, int param, int column) {
   Meter* meter = (Meter*) FUNC1(header, type, param, column);
   FUNC4(panel, (Object*) FUNC2(meter, false));
   FUNC5(panel, FUNC6(panel) - 1);
   FUNC3((MetersPanel*)panel, true);
   FUNC0(panel->currentBar, NULL);
}