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
 scalar_t__ FUNC0 (int const) ; 
 scalar_t__ FUNC1 (char*) ; 

void FUNC2 (char *s)
{
  int skip = 0;

  const int len = (int) FUNC1 (s);

  for (int i = len - 1; i >= 0; i--)
  {
    const int c = (const int) s[i];

    if (FUNC0 (c) == 0) break;

    skip++;
  }

  if (skip == 0) return;

  const size_t new_len = len - skip;

  s[new_len] = 0;
}