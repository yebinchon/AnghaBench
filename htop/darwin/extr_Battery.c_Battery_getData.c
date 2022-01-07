
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * CFTypeRef ;
typedef scalar_t__ CFStringRef ;
typedef int * CFDictionaryRef ;
typedef int * CFArrayRef ;
typedef int ACPresence ;


 int AC_ABSENT ;
 int AC_ERROR ;
 int AC_PRESENT ;
 int CFArrayGetCount (int *) ;
 int CFArrayGetValueAtIndex (int *,int) ;
 scalar_t__ CFDictionaryGetValue (int *,int ) ;
 int CFNumberGetValue (scalar_t__,int ,double*) ;
 int CFRelease (int *) ;
 int CFRetain (int *) ;
 int CFSTR (int ) ;
 scalar_t__ CFStringCompare (scalar_t__,int ,int ) ;
 int * IOPSCopyPowerSourcesInfo () ;
 int * IOPSCopyPowerSourcesList (int *) ;
 int * IOPSGetPowerSourceDescription (int *,int ) ;
 scalar_t__ kCFCompareEqualTo ;
 int kCFNumberDoubleType ;
 int kIOPSACPowerValue ;
 int kIOPSCurrentCapacityKey ;
 int kIOPSInternalType ;
 int kIOPSMaxCapacityKey ;
 int kIOPSPowerSourceStateKey ;
 int kIOPSTransportTypeKey ;

void Battery_getData(double* level, ACPresence* isOnAC) {
   CFTypeRef power_sources = IOPSCopyPowerSourcesInfo();

   *level = -1;
   *isOnAC = AC_ERROR;

   if(((void*)0) == power_sources) {
      return;
   }

   if(power_sources != ((void*)0)) {
      CFArrayRef list = IOPSCopyPowerSourcesList(power_sources);
      CFDictionaryRef battery = ((void*)0);
      int len;

      if(((void*)0) == list) {
         CFRelease(power_sources);

         return;
      }

      len = CFArrayGetCount(list);


      for(int i = 0; i < len && battery == ((void*)0); ++i) {
         CFDictionaryRef candidate = IOPSGetPowerSourceDescription(power_sources,
                                     CFArrayGetValueAtIndex(list, i));
         CFStringRef type;

         if(((void*)0) != candidate) {
            type = (CFStringRef) CFDictionaryGetValue(candidate,
                   CFSTR(kIOPSTransportTypeKey));

            if(kCFCompareEqualTo == CFStringCompare(type, CFSTR(kIOPSInternalType), 0)) {
               CFRetain(candidate);
               battery = candidate;
            }
         }
      }

      if(((void*)0) != battery) {

         CFStringRef power_state = CFDictionaryGetValue(battery, CFSTR(kIOPSPowerSourceStateKey));

         *isOnAC = (kCFCompareEqualTo == CFStringCompare(power_state, CFSTR(kIOPSACPowerValue), 0))
                 ? AC_PRESENT
                 : AC_ABSENT;


         double current;
         double max;

         CFNumberGetValue(CFDictionaryGetValue(battery, CFSTR(kIOPSCurrentCapacityKey)),
                 kCFNumberDoubleType, &current);
         CFNumberGetValue(CFDictionaryGetValue(battery, CFSTR(kIOPSMaxCapacityKey)),
                 kCFNumberDoubleType, &max);

         *level = (current * 100.0) / max;

         CFRelease(battery);
      }

      CFRelease(list);
      CFRelease(power_sources);
   }
}
