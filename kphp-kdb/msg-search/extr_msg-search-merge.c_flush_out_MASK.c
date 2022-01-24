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
 int /*<<< orphan*/ * fd ; 
 char** fnames ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int obuff ; 
 int roptr ; 
 int /*<<< orphan*/  stderr ; 
 int woptr ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3 (void) {
  int res, len = woptr - roptr;
  if (len > 0) {
    res = FUNC2 (fd[2], roptr, len);
    if (res < len) {
      FUNC1 (stderr, "error writing to %s: %d bytes written out of %d: %m\n", fnames[2], res, len);
    }
    FUNC0 (res == len);
  }
  woptr = roptr = obuff;
}