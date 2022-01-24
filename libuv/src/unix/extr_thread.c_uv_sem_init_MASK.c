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
typedef  int /*<<< orphan*/  uv_sem_t ;

/* Variables and functions */
 int /*<<< orphan*/  glibc_version_check ; 
 int /*<<< orphan*/  glibc_version_check_once ; 
 scalar_t__ platform_needs_custom_semaphore ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(uv_sem_t* sem, unsigned int value) {
#if defined(__GLIBC__) && !defined(__UCLIBC__)
  uv_once(&glibc_version_check_once, glibc_version_check);
#endif

  if (platform_needs_custom_semaphore)
    return FUNC0(sem, value);
  else
    return FUNC1(sem, value);
}