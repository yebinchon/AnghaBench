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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4 (int size) {
  static char buff[1 << 20];
  FUNC0 (size < (1 << 20));

  int r = FUNC3 (fd[0], buff, size);
  if (r != size) {
    FUNC2 (stderr, "error reading header from index file: read %d bytes instead of %d at position ???: %m\n", r, size);
    FUNC0 (r == size);
  }

  FUNC1 (buff, size - 1);
}