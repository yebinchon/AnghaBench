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
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* output_filename ; 
 int FUNC1 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp_filename ; 

void FUNC4 (void) {
  char a[PATH_MAX];
  FUNC0 (FUNC1 (a, PATH_MAX, "%s.tmp.%ld", output_filename, FUNC3 (NULL)) < PATH_MAX);
  tmp_filename = FUNC2 (a);
}