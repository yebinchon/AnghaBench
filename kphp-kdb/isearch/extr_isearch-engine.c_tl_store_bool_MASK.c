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
 int /*<<< orphan*/  TL_BOOL_FALSE ; 
 int /*<<< orphan*/  TL_BOOL_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1 (int res) {
  if (res == 1) {
    FUNC0 (TL_BOOL_TRUE);
  } else {
    FUNC0 (TL_BOOL_FALSE);
  }
}