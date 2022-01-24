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
 size_t LOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(Object* cast, RichString* out) {
   Meter* this = (Meter*)cast;
   char buffer[20];
   FUNC1(buffer, sizeof(buffer), "%.2f ", ((Meter*)this)->values[0]);
   FUNC0(out, CRT_colors[LOAD], buffer);
}