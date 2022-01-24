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
typedef  void GSLList ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (void*) ; 

int
FUNC4 (const char *addr, void (*func) (void *, void *, int),
                 void *arr)
{
  GSLList *list;
  int data_nkey, count = 0;

  data_nkey = FUNC2 (HOSTS, addr);
  if (data_nkey == 0)
    return 1;

  list = FUNC1 (HOSTS, data_nkey);
  if (!list)
    return 1;

  if ((count = FUNC3 (list)) == 0) {
    FUNC0 (list);
    return 1;
  }

  func (list, arr, count);

#ifdef TCB_MEMHASH
  free (list);
#endif

  return 0;
}