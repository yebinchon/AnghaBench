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
 char* MSG_ENOMEM ; 
 void* FUNC0 (size_t const,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void *FUNC2 (const size_t nmemb, const size_t sz)
{
  void *p = FUNC0 (nmemb, sz);

  if (p == NULL)
  {
    FUNC1 (stderr, "%s\n", MSG_ENOMEM);

    return (NULL);
  }

  return (p);
}