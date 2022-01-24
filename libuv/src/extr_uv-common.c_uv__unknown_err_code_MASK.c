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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static const char* FUNC2(int err) {
  char buf[32];
  char* copy;

  FUNC0(buf, sizeof(buf), "Unknown system error %d", err);
  copy = FUNC1(buf);

  return copy != NULL ? copy : "Unknown system error";
}