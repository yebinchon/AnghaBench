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
typedef  int /*<<< orphan*/  RichString ;

/* Variables and functions */
 int* CRT_colors ; 
 size_t LARGE_NUMBER ; 
 int ONE_DECIMAL_G ; 
 int ONE_DECIMAL_M ; 
 unsigned long ONE_G ; 
 unsigned long ONE_K ; 
 unsigned long ONE_M ; 
 size_t PROCESS ; 
 size_t PROCESS_MEGABYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC1 (char*,int,char*,unsigned long) ; 

void FUNC2(RichString* str, unsigned long number, bool coloring) {
   char buffer[11];
   int len;
   
   int largeNumberColor = CRT_colors[LARGE_NUMBER];
   int processMegabytesColor = CRT_colors[PROCESS_MEGABYTES];
   int processColor = CRT_colors[PROCESS];
   if (!coloring) {
      largeNumberColor = CRT_colors[PROCESS];
      processMegabytesColor = CRT_colors[PROCESS];
   }
 
   if(number >= (10 * ONE_DECIMAL_M)) {
      #ifdef __LP64__
      if(number >= (100 * ONE_DECIMAL_G)) {
         len = FUNC1(buffer, 10, "%4luT ", number / ONE_G);
         FUNC0(str, largeNumberColor, buffer, len);
         return;
      } else if (number >= (1000 * ONE_DECIMAL_M)) {
         len = FUNC1(buffer, 10, "%4.1lfT ", (double)number / ONE_G);
         FUNC0(str, largeNumberColor, buffer, len);
         return;
      }
      #endif
      if(number >= (100 * ONE_DECIMAL_M)) {
         len = FUNC1(buffer, 10, "%4luG ", number / ONE_M);
         FUNC0(str, largeNumberColor, buffer, len);
         return;
      }
      len = FUNC1(buffer, 10, "%4.1lfG ", (double)number / ONE_M);
      FUNC0(str, largeNumberColor, buffer, len);
      return;
   } else if (number >= 100000) {
      len = FUNC1(buffer, 10, "%4luM ", number / ONE_K);
      FUNC0(str, processMegabytesColor, buffer, len);
      return;
   } else if (number >= 1000) {
      len = FUNC1(buffer, 10, "%2lu", number/1000);
      FUNC0(str, processMegabytesColor, buffer, len);
      number %= 1000;
      len = FUNC1(buffer, 10, "%03lu ", number);
      FUNC0(str, processColor, buffer, len);
      return;
   }
   len = FUNC1(buffer, 10, "%5lu ", number);
   FUNC0(str, processColor, buffer, len);
}