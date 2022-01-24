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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t,size_t*,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (size_t) ; 

__attribute__((used)) static void FUNC2(size_t n, size_t* storage_ix, uint8_t* storage) {
  if (n == 0) {
    FUNC0(1, 0, storage_ix, storage);
  } else {
    size_t nbits = FUNC1(n);
    FUNC0(1, 1, storage_ix, storage);
    FUNC0(3, nbits, storage_ix, storage);
    FUNC0(nbits, n - ((size_t)1 << nbits), storage_ix, storage);
  }
}