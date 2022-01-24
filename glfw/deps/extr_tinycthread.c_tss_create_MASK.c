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
typedef  scalar_t__ tss_t ;
typedef  int /*<<< orphan*/ * tss_dtor_t ;

/* Variables and functions */
 scalar_t__ TLS_OUT_OF_INDEXES ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int thrd_error ; 
 int thrd_success ; 

int FUNC2(tss_t *key, tss_dtor_t dtor)
{
#if defined(_TTHREAD_WIN32_)
  /* FIXME: The destructor function is not supported yet... */
  if (dtor != NULL)
  {
    return thrd_error;
  }
  *key = TlsAlloc();
  if (*key == TLS_OUT_OF_INDEXES)
  {
    return thrd_error;
  }
#else
  if (FUNC1(key, dtor) != 0)
  {
    return thrd_error;
  }
#endif
  return thrd_success;
}