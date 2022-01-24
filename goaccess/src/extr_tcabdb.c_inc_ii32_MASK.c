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
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (void*,int*,int,int) ; 

__attribute__((used)) static int
FUNC2 (void *hash, int key, int inc)
{
  if (!hash)
    return -1;

  /* if key exists in the database, it is incremented */
  if (FUNC1 (hash, &key, sizeof (int), inc) == INT_MIN)
    FUNC0 (("Unable to tcadbput\n"));

  return 0;
}