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
 int /*<<< orphan*/  FUNC0 (char* (*) (char*,int,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/ * fail_read ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ *) ; 

char * FUNC2(char *buf, int len, FILE *f) {
  FUNC0(fgets);
  char *res = FUNC1(buf, len, f);
  if (fail_read == f)
    return 0;
  return res;
}