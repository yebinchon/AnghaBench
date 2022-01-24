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
struct sysinfo {scalar_t__ mem_unit; scalar_t__ freeram; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sysinfo*) ; 
 scalar_t__ FUNC1 (char*) ; 

uint64_t FUNC2(void) {
  struct sysinfo info;
  uint64_t rc;

  rc = FUNC1("MemFree:");

  if (rc != 0)
    return rc;

  if (0 == FUNC0(&info))
    return (uint64_t) info.freeram * info.mem_unit;

  return 0;
}