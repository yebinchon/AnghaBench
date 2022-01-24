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
typedef  scalar_t__ ProcessField ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC1(FILE* fd, ProcessField* fields, const char* name) {
   FUNC0(fd, "%s=", name);
   const char* sep = "";
   for (int i = 0; fields[i]; i++) {
      // This "-1" is for compatibility with the older enum format.
      FUNC0(fd, "%s%d", sep, (int) fields[i]-1);
      sep = " ";
   }
   FUNC0(fd, "\n");
}