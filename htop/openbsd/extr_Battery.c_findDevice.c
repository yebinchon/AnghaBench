
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensordev {int xname; } ;


 scalar_t__ ENOENT ;
 scalar_t__ ENXIO ;
 scalar_t__ errno ;
 scalar_t__ strcmp (char const*,int ) ;
 int sysctl (int*,int,struct sensordev*,size_t*,int *,int ) ;

__attribute__((used)) static bool findDevice(const char* name, int* mib, struct sensordev* snsrdev, size_t* sdlen) {
   for (int devn = 0;; devn++) {
      mib[2] = devn;
      if (sysctl(mib, 3, snsrdev, sdlen, ((void*)0), 0) == -1) {
         if (errno == ENXIO)
            continue;
         if (errno == ENOENT)
            return 0;
      }
      if (strcmp(name, snsrdev->xname) == 0) {
         return 1;
      }
   }
}
