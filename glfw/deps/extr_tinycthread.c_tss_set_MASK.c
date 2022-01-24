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
typedef  int /*<<< orphan*/  tss_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int thrd_error ; 
 int thrd_success ; 

int FUNC2(tss_t key, void *val)
{
#if defined(_TTHREAD_WIN32_)
  if (TlsSetValue(key, val) == 0)
  {
    return thrd_error;
  }
#else
  if (FUNC1(key, val) != 0)
  {
    return thrd_error;
  }
#endif
  return thrd_success;
}