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
 int /*<<< orphan*/  P6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char,void*) ; 

__attribute__((used)) static unsigned char *
FUNC2 (unsigned char *dp, unsigned char code, void *arg)
{
  int gregs = (code & 0x10) != 0;
  unsigned char mask = (code & 0x0f);

  if (gregs)
    FUNC1(P6, mask, arg);
  else
    FUNC0(P6, mask, arg);
  return dp;
}