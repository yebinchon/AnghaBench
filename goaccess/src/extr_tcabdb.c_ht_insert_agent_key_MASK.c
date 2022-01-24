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
 int FUNC0 (void*,char const*) ; 
 void* ht_agent_keys ; 
 int FUNC1 (void*,char const*) ; 

int
FUNC2 (const char *key)
{
  int value = -1;
  void *hash = ht_agent_keys;

  if (!hash)
    return -1;

  if ((value = FUNC0 (hash, key)) != -1)
    return value;

  return FUNC1 (hash, key);
}