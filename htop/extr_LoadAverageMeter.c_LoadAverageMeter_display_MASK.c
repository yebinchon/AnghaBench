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
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int /*<<< orphan*/ * values; } ;
typedef  int /*<<< orphan*/  RichString ;
typedef  int /*<<< orphan*/  Object ;
typedef  TYPE_1__ Meter ;

/* Variables and functions */
 int /*<<< orphan*/ * CRT_colors ; 
 size_t LOAD_AVERAGE_FIFTEEN ; 
 size_t LOAD_AVERAGE_FIVE ; 
 size_t LOAD_AVERAGE_ONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(Object* cast, RichString* out) {
   Meter* this = (Meter*)cast;
   char buffer[20];
   FUNC2(buffer, sizeof(buffer), "%.2f ", this->values[0]);
   FUNC1(out, CRT_colors[LOAD_AVERAGE_ONE], buffer);
   FUNC2(buffer, sizeof(buffer), "%.2f ", this->values[1]);
   FUNC0(out, CRT_colors[LOAD_AVERAGE_FIVE], buffer);
   FUNC2(buffer, sizeof(buffer), "%.2f ", this->values[2]);
   FUNC0(out, CRT_colors[LOAD_AVERAGE_FIFTEEN], buffer);
}