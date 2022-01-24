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
 size_t PROCESS ; 
 size_t PROCESS_MEGABYTES ; 
 size_t PROCESS_SHADOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned long long) ; 

void FUNC3(RichString* str, unsigned long long number, bool coloring) {
   char buffer[14];

   int largeNumberColor = CRT_colors[LARGE_NUMBER];
   int processMegabytesColor = CRT_colors[PROCESS_MEGABYTES];
   int processColor = CRT_colors[PROCESS];
   int processShadowColor = CRT_colors[PROCESS_SHADOW];
   if (!coloring) {
      largeNumberColor = CRT_colors[PROCESS];
      processMegabytesColor = CRT_colors[PROCESS];
      processShadowColor = CRT_colors[PROCESS];
   }

   if ((long long) number == -1LL) {
      int len = FUNC1(buffer, 13, "    no perm ");
      FUNC0(str, CRT_colors[PROCESS_SHADOW], buffer, len);
   } else if (number > 10000000000) {
      FUNC2(buffer, 13, "%11llu ", number / 1000);
      FUNC0(str, largeNumberColor, buffer, 5);
      FUNC0(str, processMegabytesColor, buffer+5, 3);
      FUNC0(str, processColor, buffer+8, 4);
   } else {
      FUNC2(buffer, 13, "%11llu ", number);
      FUNC0(str, largeNumberColor, buffer, 2);
      FUNC0(str, processMegabytesColor, buffer+2, 3);
      FUNC0(str, processColor, buffer+5, 3);
      FUNC0(str, processShadowColor, buffer+8, 4);
   }
}