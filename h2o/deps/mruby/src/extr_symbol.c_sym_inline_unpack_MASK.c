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
typedef  int mrb_sym ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 char const* FUNC1 (int,char*,int) ; 

__attribute__((used)) static const char*
FUNC2(mrb_sym sym, char *buf)
{
  FUNC0(sym&1);

  if (sym&2) {                  /* all lower case (5bits/char) */
    return FUNC1(sym, buf, 5);
  }
  return FUNC1(sym, buf, 6);
}