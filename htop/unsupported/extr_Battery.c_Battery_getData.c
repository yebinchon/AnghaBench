
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPresence ;


 int AC_ERROR ;

void Battery_getData(double* level, ACPresence* isOnAC) {
   *level = -1;
   *isOnAC = AC_ERROR;
}
