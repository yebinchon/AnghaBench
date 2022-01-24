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
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * buffer ; 
 size_t qright ; 
 int qsize ; 
 int qtotal ; 

void FUNC1 (int bytes) {
  while (qtotal < qsize - 1 && bytes > 0) {
    buffer[qright] = FUNC0 (&B);
    if (++qright == qsize) {
      qright = 0;
    }
    qtotal++;
    bytes--;
  }
}