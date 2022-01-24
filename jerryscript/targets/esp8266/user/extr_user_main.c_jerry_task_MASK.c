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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int portTickType ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 

__attribute__((used)) static void FUNC5(void *pvParameters) {
  if (FUNC0() == 0) {
    const portTickType xDelay = 100 / portTICK_RATE_MS;
    uint32_t ticknow = 0;

    for (;;) {
      FUNC4(xDelay);
      FUNC2(ticknow);
      if (!ticknow) {
        FUNC3(4);
      }
      ticknow++;
    }
  }
  FUNC1();
}