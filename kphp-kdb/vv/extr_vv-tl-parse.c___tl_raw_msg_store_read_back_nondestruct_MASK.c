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
 int /*<<< orphan*/  TL_OUT_RAW_MSG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct raw_message*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct raw_message*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct raw_message*) ; 

__attribute__((used)) static inline void FUNC4 (void *buf, int len) {
  struct raw_message r;
  FUNC1 (&r, TL_OUT_RAW_MSG);
  FUNC0 (FUNC2 (&r, buf, len) == len);
  FUNC3 (&r);
}