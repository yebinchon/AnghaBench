
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Meter ;


 int gethostname (char*,int) ;

__attribute__((used)) static void HostnameMeter_updateValues(Meter* this, char* buffer, int size) {
   (void) this;
   gethostname(buffer, size-1);
}
