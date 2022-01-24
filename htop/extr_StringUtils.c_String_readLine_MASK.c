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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (int const) ; 
 char* FUNC5 (char*,int) ; 

char* FUNC6(FILE* fd) {
   const int step = 1024;
   int bufSize = step;
   char* buffer = FUNC4(step + 1);
   char* at = buffer;
   for (;;) {
      char* ok = FUNC1(at, step + 1, fd);
      if (!ok) {
         FUNC2(buffer);
         return NULL;
      }
      char* newLine = FUNC3(at, '\n');
      if (newLine) {
         *newLine = '\0';
         return buffer;
      } else {
         if (FUNC0(fd)) {
            return buffer;
         }
      }
      bufSize += step;
      buffer = FUNC5(buffer, bufSize + 1);
      at = buffer + bufSize - step;
   }
}