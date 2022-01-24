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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t const) ; 
 int FUNC1 (int /*<<< orphan*/  const*,size_t const,char const) ; 
 int FUNC2 (int /*<<< orphan*/  const*,size_t const) ; 
 int FUNC3 (int /*<<< orphan*/  const*,size_t const) ; 

bool FUNC4 (const u8 *buf, const size_t len, const char separator, bool always_ascii)
{
  bool rc = false;

  if (always_ascii == true)
  {
    if (FUNC2 (buf, len) == false)
    {
      rc = true;
    }
  }
  else
  {
    if (FUNC3 (buf, len) == false)
    {
      rc = true;
    }
  }

  if (rc == false)
  {
    if (FUNC1 (buf, len, separator) == true)
    {
      rc = true;
    }
  }

  // also test if the password is of the format $HEX[]:

  if (rc == false)
  {
    if (FUNC0 (buf, len))
    {
      rc = true;
    }
  }

  return rc;
}