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
struct TYPE_3__ {double* values; scalar_t__ mode; } ;
typedef  TYPE_1__ Meter ;
typedef  scalar_t__ ACPresence ;

/* Variables and functions */
 scalar_t__ AC_ABSENT ; 
 scalar_t__ AC_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (double*,scalar_t__*) ; 
 scalar_t__ TEXT_METERMODE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*,...) ; 

__attribute__((used)) static void FUNC2(Meter * this, char *buffer, int len) {
   ACPresence isOnAC;
   double percent;
   
   FUNC0(&percent, &isOnAC);

   if (percent == -1) {
      this->values[0] = 0;
      FUNC1(buffer, len, "n/a");
      return;
   }

   this->values[0] = percent;

   const char *onAcText, *onBatteryText, *unknownText;

   unknownText = "%.1f%%";
   if (this->mode == TEXT_METERMODE) {
      onAcText = "%.1f%% (Running on A/C)";
      onBatteryText = "%.1f%% (Running on battery)";
   } else {
      onAcText = "%.1f%%(A/C)";
      onBatteryText = "%.1f%%(bat)";
   }

   if (isOnAC == AC_PRESENT) {
      FUNC1(buffer, len, onAcText, percent);
   } else if (isOnAC == AC_ABSENT) {
      FUNC1(buffer, len, onBatteryText, percent);
   } else {
      FUNC1(buffer, len, unknownText, percent);
   }

   return;
}