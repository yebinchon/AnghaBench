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
struct netbuffer {int dummy; } ;
struct nb_reader {int bytes; int /*<<< orphan*/  it; scalar_t__ ptr_s; scalar_t__ ptr_e; scalar_t__ p; scalar_t__ bytes_read; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct netbuffer*) ; 

void FUNC3 (struct nb_reader *I, struct netbuffer *In, const int bytes) {
  I->bytes = bytes;
  I->bytes_read = 0;
  FUNC2 (&I->it, In);
  I->p = I->ptr_s = FUNC0 (&I->it);
  I->ptr_e = I->ptr_s + FUNC1 (&I->it);
}