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
 int /*<<< orphan*/ * CRT_colors ; 
 size_t DEFAULT_COLOR ; 
 size_t LARGE_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,...) ; 

void FUNC2(RichString* str, unsigned long long totalHundredths) {
   unsigned long long totalSeconds = totalHundredths / 100;

   unsigned long long hours = totalSeconds / 3600;
   int minutes = (totalSeconds / 60) % 60;
   int seconds = totalSeconds % 60;
   int hundredths = totalHundredths - (totalSeconds * 100);
   char buffer[11];
   if (hours >= 100) {
      FUNC1(buffer, 10, "%7lluh ", hours);
      FUNC0(str, CRT_colors[LARGE_NUMBER], buffer);
   } else {
      if (hours) {
         FUNC1(buffer, 10, "%2lluh", hours);
         FUNC0(str, CRT_colors[LARGE_NUMBER], buffer);
         FUNC1(buffer, 10, "%02d:%02d ", minutes, seconds);
      } else {
         FUNC1(buffer, 10, "%2d:%02d.%02d ", minutes, seconds, hundredths);
      }
      FUNC0(str, CRT_colors[DEFAULT_COLOR], buffer);
   }
}