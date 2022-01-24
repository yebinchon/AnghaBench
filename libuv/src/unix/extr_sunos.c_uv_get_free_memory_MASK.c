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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_AVPHYS_PAGES ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

uint64_t FUNC1(void) {
  return (uint64_t) FUNC0(_SC_PAGESIZE) * FUNC0(_SC_AVPHYS_PAGES);
}