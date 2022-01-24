#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * CFTypeRef ;
typedef  scalar_t__ CFStringRef ;
typedef  int /*<<< orphan*/ * CFDictionaryRef ;
typedef  int /*<<< orphan*/ * CFArrayRef ;
typedef  int /*<<< orphan*/  ACPresence ;

/* Variables and functions */
 int /*<<< orphan*/  AC_ABSENT ; 
 int /*<<< orphan*/  AC_ERROR ; 
 int /*<<< orphan*/  AC_PRESENT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ kCFCompareEqualTo ; 
 int /*<<< orphan*/  kCFNumberDoubleType ; 
 int /*<<< orphan*/  kIOPSACPowerValue ; 
 int /*<<< orphan*/  kIOPSCurrentCapacityKey ; 
 int /*<<< orphan*/  kIOPSInternalType ; 
 int /*<<< orphan*/  kIOPSMaxCapacityKey ; 
 int /*<<< orphan*/  kIOPSPowerSourceStateKey ; 
 int /*<<< orphan*/  kIOPSTransportTypeKey ; 

void FUNC11(double* level, ACPresence* isOnAC) {
   CFTypeRef power_sources = FUNC8();

   *level = -1;
   *isOnAC = AC_ERROR;

   if(NULL == power_sources) {
      return;
   }

   if(power_sources != NULL) {
      CFArrayRef list = FUNC9(power_sources);
      CFDictionaryRef battery = NULL;
      int len;

      if(NULL == list) {
         FUNC4(power_sources);

         return;
      }

      len = FUNC0(list);

      /* Get the battery */
      for(int i = 0; i < len && battery == NULL; ++i) {
         CFDictionaryRef candidate = FUNC10(power_sources,
                                     FUNC1(list, i)); /* GET rule */
         CFStringRef type;

         if(NULL != candidate) {
            type = (CFStringRef) FUNC2(candidate,
                   FUNC6(kIOPSTransportTypeKey)); /* GET rule */

            if(kCFCompareEqualTo == FUNC7(type, FUNC6(kIOPSInternalType), 0)) {
               FUNC5(candidate);
               battery = candidate;
            }
         }
      }

      if(NULL != battery) {
         /* Determine the AC state */
         CFStringRef power_state = FUNC2(battery, FUNC6(kIOPSPowerSourceStateKey));

         *isOnAC = (kCFCompareEqualTo == FUNC7(power_state, FUNC6(kIOPSACPowerValue), 0))
                 ? AC_PRESENT
                 : AC_ABSENT;

         /* Get the percentage remaining */
         double current;
         double max;

         FUNC3(FUNC2(battery, FUNC6(kIOPSCurrentCapacityKey)),
                 kCFNumberDoubleType, &current);
         FUNC3(FUNC2(battery, FUNC6(kIOPSMaxCapacityKey)),
                 kCFNumberDoubleType, &max);

         *level = (current * 100.0) / max;

         FUNC4(battery);
      }

      FUNC4(list);
      FUNC4(power_sources);
   }
}