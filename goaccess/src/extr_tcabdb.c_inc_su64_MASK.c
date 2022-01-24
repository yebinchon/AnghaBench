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
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 void* FUNC3 (void*,char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static int
FUNC5 (void *hash, const char *key, uint64_t inc)
{
  int sp;
  uint64_t value = inc;
  void *ptr;

  if (!hash)
    return -1;

  if ((ptr = FUNC3 (hash, key, FUNC2 (key), &sp)) != NULL) {
    value = (*(uint64_t *) ptr) + inc;
    FUNC1 (ptr);
  }

  /* if key exists in the database, it is overwritten */
  if (!FUNC4 (hash, key, FUNC2 (key), &value, sizeof (uint64_t)))
    FUNC0 (("Unable to tcadbput\n"));

  return 0;
}