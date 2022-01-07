
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* values; scalar_t__ mode; } ;
typedef TYPE_1__ Meter ;
typedef scalar_t__ ACPresence ;


 scalar_t__ AC_ABSENT ;
 scalar_t__ AC_PRESENT ;
 int Battery_getData (double*,scalar_t__*) ;
 scalar_t__ TEXT_METERMODE ;
 int xSnprintf (char*,int,char const*,...) ;

__attribute__((used)) static void BatteryMeter_updateValues(Meter * this, char *buffer, int len) {
   ACPresence isOnAC;
   double percent;

   Battery_getData(&percent, &isOnAC);

   if (percent == -1) {
      this->values[0] = 0;
      xSnprintf(buffer, len, "n/a");
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
      xSnprintf(buffer, len, onAcText, percent);
   } else if (isOnAC == AC_ABSENT) {
      xSnprintf(buffer, len, onBatteryText, percent);
   } else {
      xSnprintf(buffer, len, unknownText, percent);
   }

   return;
}
