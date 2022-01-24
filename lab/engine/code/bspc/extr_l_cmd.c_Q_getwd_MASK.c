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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

void FUNC5 (char *out, size_t size)
{
   FUNC0(size >= 2);
   if (NULL == FUNC2(out, size - 2)) {
      FUNC3("getcwd");
      FUNC1(1);
   }
#if defined(WIN32) || defined(_WIN32)
   strcat(out, "\\");
#else
   FUNC4(out, "/");
#endif
}