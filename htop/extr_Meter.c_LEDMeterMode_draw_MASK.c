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
 scalar_t__ CRT_utf8 ; 
 int /*<<< orphan*/  LEDMeterMode_digits ; 
 int /*<<< orphan*/  LEDMeterMode_digitsAscii ; 
 int /*<<< orphan*/  LEDMeterMode_digitsUtf8 ; 
 int /*<<< orphan*/  FUNC0 (int,int,char) ; 
 size_t LED_COLOR ; 
 int METER_BUFFER_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 size_t RESET_COLOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int,char) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(Meter* this, int x, int y, int w) {
   (void) w;

#ifdef HAVE_LIBNCURSESW
   if (CRT_utf8)
      LEDMeterMode_digits = LEDMeterMode_digitsUtf8;
   else
#endif
      LEDMeterMode_digits = LEDMeterMode_digitsAscii;

   char buffer[METER_BUFFER_LEN];
   FUNC2(this, buffer, METER_BUFFER_LEN - 1);
   
   FUNC3(out);
   FUNC1(this, buffer, &out);

   int yText =
#ifdef HAVE_LIBNCURSESW
      CRT_utf8 ? y+1 :
#endif
      y+2;
   FUNC7(CRT_colors[LED_COLOR]);
   FUNC9(yText, x, this->caption);
   int xx = x + FUNC10(this->caption);
   int len = FUNC6(out);
   for (int i = 0; i < len; i++) {
      char c = FUNC5(out, i);
      if (c >= '0' && c <= '9') {
         FUNC0(xx, y, c-48);
         xx += 4;
      } else {
         FUNC8(yText, xx, c);
         xx += 1;
      }
   }
   FUNC7(CRT_colors[RESET_COLOR]);
   FUNC4(out);
}