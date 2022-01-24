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
 scalar_t__ OLIST_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__* ocntT ; 

__attribute__((used)) static inline void FUNC1 (int p, int val) {
  p += OLIST_COUNT;
  FUNC0 (ocntT[p] + val >= 0);
  while (p) {
    ocntT[p] += val;
    p >>= 1;
  }
}