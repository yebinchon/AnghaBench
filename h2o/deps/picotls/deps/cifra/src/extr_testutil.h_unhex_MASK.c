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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const) ; 

__attribute__((used)) static inline size_t FUNC3(uint8_t *buf, size_t len, const char *str)
{
  size_t used = 0;

  FUNC0(FUNC1(str) % 2 == 0);
  FUNC0(FUNC1(str) / 2 <= len);

  while (*str)
  {
    FUNC0(len);
    *buf = FUNC2(str[0]) << 4 | FUNC2(str[1]);
    buf++;
    used++;
    str += 2;
    len--;
  }

  return used;
}