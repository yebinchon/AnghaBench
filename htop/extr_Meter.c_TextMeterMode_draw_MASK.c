#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  caption; } ;
typedef  TYPE_1__ Meter ;

/* Variables and functions */
 int /*<<< orphan*/ * CRT_colors ; 
 int METER_BUFFER_LEN ; 
 size_t METER_TEXT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 size_t RESET_COLOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Meter* this, int x, int y, int w) {
   char buffer[METER_BUFFER_LEN];
   FUNC1(this, buffer, METER_BUFFER_LEN - 1);
   (void) w;

   FUNC5(CRT_colors[METER_TEXT]);
   FUNC6(y, x, this->caption);
   int captionLen = FUNC7(this->caption);
   x += captionLen;
   FUNC5(CRT_colors[RESET_COLOR]);
   FUNC2(out);
   FUNC0(this, buffer, &out);
   FUNC4(out, y, x);
   FUNC3(out);
}