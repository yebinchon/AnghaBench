
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPresence ;


 double Battery_getProcBatData () ;
 int procAcpiCheck () ;

__attribute__((used)) static void Battery_getProcData(double* level, ACPresence* isOnAC) {
   *level = Battery_getProcBatData();
   *isOnAC = procAcpiCheck();
}
