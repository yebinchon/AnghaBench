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
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 

int FUNC6(char *template) {
  size_t len = FUNC5(template);
  int tries=5;
  int fd;

  // mktemp() truncates template when it fails
  char *s = FUNC0(len + 1);
  FUNC1(s != NULL);
  FUNC4(s, template);

  do {
    // Restore template
    FUNC4(template, s);
    (void) FUNC2(template);
    fd = FUNC3(template, O_CREAT | O_EXCL | O_RDWR, 0600);
  } while (fd == -1 && tries-- > 0);
  return fd;
}