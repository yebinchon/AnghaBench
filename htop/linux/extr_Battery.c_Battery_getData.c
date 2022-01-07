
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int ACPresence ;


 int AC_ERROR ;
 scalar_t__ BAT_ERR ;
 scalar_t__ BAT_PROC ;
 scalar_t__ BAT_SYS ;
 int Battery_cacheIsOnAC ;
 double Battery_cacheLevel ;
 scalar_t__ Battery_cacheTime ;
 int Battery_getProcData (double*,int *) ;
 int Battery_getSysData (double*,int *) ;
 scalar_t__ Battery_method ;
 scalar_t__ time (int *) ;

void Battery_getData(double* level, ACPresence* isOnAC) {
   time_t now = time(((void*)0));

   if (now < Battery_cacheTime + 10) {
      *level = Battery_cacheLevel;
      *isOnAC = Battery_cacheIsOnAC;
      return;
   }

   if (Battery_method == BAT_PROC) {
      Battery_getProcData(level, isOnAC);
      if (*level == 0) {
         Battery_method = BAT_SYS;
      }
   }
   if (Battery_method == BAT_SYS) {
      Battery_getSysData(level, isOnAC);
      if (*level == 0) {
         Battery_method = BAT_ERR;
      }
   }
   if (Battery_method == BAT_ERR) {
      *level = -1;
      *isOnAC = AC_ERROR;
   }
   if (*level > 100.0) {
      *level = 100.0;
   }
   Battery_cacheLevel = *level;
   Battery_cacheIsOnAC = *isOnAC;
   Battery_cacheTime = now;
}
