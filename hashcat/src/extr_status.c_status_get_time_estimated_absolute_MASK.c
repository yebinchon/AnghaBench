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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ ETA_ABSOLUTE_MAX_EXCEEDED ; 
 char* FUNC0 (scalar_t__*,char*) ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 char* FUNC3 (char*) ; 
 size_t FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

char *FUNC6 (const hashcat_ctx_t *hashcat_ctx)
{
  time_t sec_etc = FUNC2 (hashcat_ctx);

  time_t now;
  FUNC5 (&now);


  char buf[32] = { 0 };

  char *etc;

  if (FUNC1 (now, sec_etc) == false)
  {
    etc = (char *) ETA_ABSOLUTE_MAX_EXCEEDED;
  }
  else
  {
    time_t end = now + sec_etc;

    etc = FUNC0 (&end, buf);

    if (etc == NULL) etc = (char *) ETA_ABSOLUTE_MAX_EXCEEDED;
  }

  const size_t etc_len = FUNC4 (etc);

  if (etc[etc_len - 1] == '\n') etc[etc_len - 1] = 0;
  if (etc[etc_len - 2] == '\r') etc[etc_len - 2] = 0;

  return FUNC3 (etc);
}