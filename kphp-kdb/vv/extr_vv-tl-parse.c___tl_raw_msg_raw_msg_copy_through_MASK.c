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
 int /*<<< orphan*/  TL_IN_RAW_MSG ; 
 int /*<<< orphan*/  TL_OUT_RAW_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct raw_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct raw_message*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct raw_message*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct raw_message*) ; 

__attribute__((used)) static inline void FUNC4 (int len, int advance) {
  if (!advance) {
    struct raw_message r;
    FUNC0 (&r, TL_IN_RAW_MSG);
    FUNC2 (&r, len);
    FUNC3 (TL_OUT_RAW_MSG, &r);
  } else {
    struct raw_message r;
    FUNC1 (&r, TL_IN_RAW_MSG, len);
    FUNC3 (TL_OUT_RAW_MSG, &r);
  }
}