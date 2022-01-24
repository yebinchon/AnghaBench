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
 scalar_t__ TL_IN ; 
 scalar_t__ TL_IN_RAW_MSG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC2 (void) {
  if (TL_IN_RAW_MSG) {
    FUNC0 (TL_IN_RAW_MSG);
    FUNC1 (TL_IN_RAW_MSG, sizeof (struct raw_message));
    TL_IN = 0;
  }
}