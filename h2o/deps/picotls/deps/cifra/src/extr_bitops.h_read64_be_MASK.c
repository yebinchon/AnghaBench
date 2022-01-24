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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline uint64_t FUNC1(const uint8_t buf[8])
{
  uint32_t hi = FUNC0(buf),
           lo = FUNC0(buf + 4);
  return ((uint64_t)hi) << 32 |
         lo;
}