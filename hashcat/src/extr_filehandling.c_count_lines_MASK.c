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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 scalar_t__ HCBUFSIZ_LARGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (char*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

u64 FUNC4 (HCFILE *fp)
{
  u64 cnt = 0;

  char *buf = (char *) FUNC3 (HCBUFSIZ_LARGE + 1);

  char prev = '\n';

  while (!FUNC0 (fp))
  {
    size_t nread = FUNC1 (buf, sizeof (char), HCBUFSIZ_LARGE, fp);

    if (nread < 1) continue;

    size_t i;

    for (i = 0; i < nread; i++)
    {
      if (prev == '\n') cnt++;

      prev = buf[i];
    }
  }

  FUNC2 (buf);

  return cnt;
}