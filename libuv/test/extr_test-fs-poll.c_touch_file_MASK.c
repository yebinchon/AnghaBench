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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIXTURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char* path) {
  static int count;
  FILE* fp;
  int i;

  FUNC0((fp = FUNC2(FIXTURE, "w+")));

  /* Need to change the file size because the poller may not pick up
   * sub-second mtime changes.
   */
  i = ++count;

  while (i--)
    FUNC3('*', fp);

  FUNC1(fp);
}