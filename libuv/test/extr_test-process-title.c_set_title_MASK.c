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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(const char* title) {
  char buffer[512];
  int err;

  err = FUNC2(buffer, sizeof(buffer));
  FUNC0(err == 0);

  err = FUNC3(title);
  FUNC0(err == 0);

  err = FUNC2(buffer, sizeof(buffer));
  FUNC0(err == 0);

  FUNC0(FUNC1(buffer, title) == 0);
}