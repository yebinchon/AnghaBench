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
struct raw_message {int dummy; } ;

/* Variables and functions */
 struct raw_message* TL_IN_MARK ; 
 int /*<<< orphan*/  TL_IN_MARK_POS ; 
 int /*<<< orphan*/  TL_IN_POS ; 
 int /*<<< orphan*/  TL_IN_RAW_MSG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct raw_message*,int /*<<< orphan*/ ) ; 
 struct raw_message* FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3 (void) {
  FUNC0 (!TL_IN_MARK);
  struct raw_message *T = FUNC2 (sizeof (*T));
  FUNC1 (T, TL_IN_RAW_MSG);
  TL_IN_MARK = T;
  TL_IN_MARK_POS = TL_IN_POS;
}