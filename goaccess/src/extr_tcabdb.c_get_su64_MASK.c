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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 void* FUNC2 (void*,char const*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static uint64_t
FUNC3 (void *hash, const char *key)
{
  int sp;
  uint64_t ret = 0;
  void *ptr;
  if (!hash)
    return 0;

  /* key found, return current value */
  if ((ptr = FUNC2 (hash, key, FUNC1 (key), &sp)) != NULL) {
    ret = (*(uint64_t *) ptr);
    FUNC0 (ptr);
    return ret;
  }

  return 0;
}