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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (void*,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int*,int,scalar_t__*,int) ; 

__attribute__((used)) static int
FUNC4 (void *hash, int key, uint64_t inc)
{
  int sp;
  uint64_t value = inc;
  void *ptr;

  if (!hash)
    return -1;

  if ((ptr = FUNC2 (hash, &key, sizeof (int), &sp)) != NULL) {
    value = (*(uint64_t *) ptr) + inc;
    FUNC1 (ptr);
  }

  /* if key exists in the database, it is overwritten */
  if (!FUNC3 (hash, &key, sizeof (int), &value, sizeof (uint64_t)))
    FUNC0 (("Unable to tcadbput\n"));

  return 0;
}