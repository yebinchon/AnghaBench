
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensordev {int dummy; } ;
struct sensor {double value; } ;
typedef double ACPresence ;


 double AC_ERROR ;


 int findDevice (char*,int*,struct sensordev*,size_t*) ;
 int sysctl (int*,int,struct sensor*,size_t*,int *,int ) ;

void Battery_getData(double* level, ACPresence* isOnAC) {
   static int mib[] = {129, 128, 0, 0, 0};
   struct sensor s;
   size_t slen = sizeof(struct sensor);
   struct sensordev snsrdev;
   size_t sdlen = sizeof(struct sensordev);

   bool found = findDevice("acpibat0", mib, &snsrdev, &sdlen);

   *level = -1;
   if (found) {

      mib[3] = 7;
      mib[4] = 0;
      double last_full_capacity = 0;
      if (sysctl(mib, 5, &s, &slen, ((void*)0), 0) != -1) {
         last_full_capacity = s.value;
      }
      if (last_full_capacity > 0) {

         mib[3] = 7;
         mib[4] = 3;
         if (sysctl(mib, 5, &s, &slen, ((void*)0), 0) != -1) {
            double charge = s.value;
            *level = 100*(charge / last_full_capacity);
            if (charge >= last_full_capacity) {
               *level = 100;
            }
         }
      }
   }

   found = findDevice("acpiac0", mib, &snsrdev, &sdlen);

   *isOnAC = AC_ERROR;
   if (found) {
      mib[3] = 9;
      mib[4] = 0;
      if (sysctl(mib, 5, &s, &slen, ((void*)0), 0) != -1) {
         *isOnAC = s.value;
      }
   }
}
