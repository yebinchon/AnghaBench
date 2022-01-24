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
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,int) ; 
 char* prog ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

int FUNC5 (char *newdir)
{
  char *buffer = FUNC3(newdir);
  char *p;
  int  len = FUNC4(buffer);

  if (len <= 0) {
    FUNC1(buffer);
    return 0;
  }
  if (buffer[len-1] == '/') {
    buffer[len-1] = '\0';
  }
  if (FUNC2(buffer, 0755) == 0)
    {
      FUNC1(buffer);
      return 1;
    }

  p = buffer+1;
  while (1)
    {
      char hold;

      while(*p && *p != '\\' && *p != '/')
        p++;
      hold = *p;
      *p = 0;
      if ((FUNC2(buffer, 0755) == -1) && (errno == ENOENT))
        {
          FUNC0(stderr,"%s: Couldn't create directory %s\n",prog,buffer);
          FUNC1(buffer);
          return 0;
        }
      if (hold == 0)
        break;
      *p++ = hold;
    }
  FUNC1(buffer);
  return 1;
}