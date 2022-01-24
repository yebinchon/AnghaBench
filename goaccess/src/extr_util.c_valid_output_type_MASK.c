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
 scalar_t__ FUNC0 (char*,char const*) ; 
 size_t FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 

int
FUNC3 (const char *filename)
{
  const char *ext = NULL;
  size_t sl;

  if ((ext = FUNC2 (filename, '.')) == NULL)
    return -1;

  ext++;
  /* Is extension 3<=len<=4? */
  sl = FUNC1 (ext);
  if (sl < 3 || sl > 4)
    return 0;

  if (FUNC0 ("html", ext) == 0)
    return 1;

  if (FUNC0 ("json", ext) == 0)
    return 1;

  if (FUNC0 ("csv", ext) == 0)
    return 1;

  return 0;
}