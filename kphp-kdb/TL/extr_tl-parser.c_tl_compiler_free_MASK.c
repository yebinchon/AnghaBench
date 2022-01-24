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
struct tl_compiler {int /*<<< orphan*/  hm_composite_typename; int /*<<< orphan*/ * hm_combinator; int /*<<< orphan*/ * hm_magic; int /*<<< orphan*/  tmp_error_buff; int /*<<< orphan*/ * error_msg; } ;

/* Variables and functions */
 int TL_MAX_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tl_compiler*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4 (struct tl_compiler *C) {
  int i;
  for (i = 0; i < TL_MAX_ERRORS; i++) {
    FUNC0 (&C->error_msg[i]);
  }
  FUNC3 (&C->tmp_error_buff);
  for (i = 0; i < 2; i++) {
    FUNC2 (C, i);
    FUNC1 (&C->hm_magic[i]);
    FUNC1 (&C->hm_combinator[i]);
  }
  FUNC1 (&C->hm_composite_typename);
}