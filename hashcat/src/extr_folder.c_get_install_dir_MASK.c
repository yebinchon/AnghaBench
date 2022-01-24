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
 scalar_t__ HCBUFSIZ_TINY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__) ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static void FUNC2 (char *install_dir, const char *exec_path)
{
  FUNC0 (install_dir, exec_path, HCBUFSIZ_TINY - 1);

  char *last_slash = NULL;

  if ((last_slash = FUNC1 (install_dir, '/')) != NULL)
  {
    *last_slash = 0;
  }
  else if ((last_slash = FUNC1 (install_dir, '\\')) != NULL)
  {
    *last_slash = 0;
  }
  else
  {
    install_dir[0] = '.';
    install_dir[1] = 0;
  }
}