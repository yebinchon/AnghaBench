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
struct transaction_buffer {long long size; scalar_t__ p; int /*<<< orphan*/  buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,long long) ; 
 int /*<<< orphan*/  FUNC2 (long long) ; 

__attribute__((used)) static void FUNC3 (struct transaction_buffer *B, long long size) {
  B->buff = FUNC2 (size);
  if (!B->buff) {
    FUNC1 ("Not enough memory to allocate transaction buffer (%lld bytes size).\n", size);
    FUNC0 (1);
  }
  B->size = size;
  B->p = 0;
}