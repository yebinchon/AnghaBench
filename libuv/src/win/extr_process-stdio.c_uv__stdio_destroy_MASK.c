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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(BYTE* buffer) {
  int i, count;

  count = FUNC0(buffer);
  for (i = 0; i < count; i++) {
    HANDLE handle = FUNC1(buffer, i);
    if (handle != INVALID_HANDLE_VALUE) {
      FUNC2(handle);
    }
  }

  FUNC3(buffer);
}