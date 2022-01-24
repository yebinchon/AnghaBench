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
 int /*<<< orphan*/  FUNC0 (size_t (*) (void*,size_t,size_t,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/ * fail_read ; 
 size_t FUNC1 (void*,size_t,size_t,int /*<<< orphan*/ *) ; 

size_t FUNC2(void *buf, size_t sz, size_t nemb, FILE *f) {
  FUNC0(fread);
  size_t res = FUNC1(buf, sz, nemb, f);
  if (fail_read == f)
    return 0;
  return res;
}