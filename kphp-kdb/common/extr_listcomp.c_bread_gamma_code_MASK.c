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
struct bitreader {int m; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct bitreader*,int) ; 
 scalar_t__ decode_cur_bit ; 
 int /*<<< orphan*/  FUNC1 () ; 

unsigned int FUNC2 (struct bitreader *br) {
  int k = 0, m = br->m;
  while (decode_cur_bit) {
    k++;
    FUNC1();
  }
  FUNC1();
  br->m = m;
  return (1U << k) | FUNC0 (br, k);
}