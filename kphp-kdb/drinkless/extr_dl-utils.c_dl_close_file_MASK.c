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
 int MAX_FN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int* fd ; 
 int /*<<< orphan*/ ** fnames ; 
 scalar_t__* fpos ; 
 scalar_t__* fread_only ; 
 scalar_t__* fsize ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (int x) {
  FUNC0 (0 <= x && x < MAX_FN);
  FUNC0 (fd[x] != -1);

  if (!fread_only[x]) {
    FUNC0 (FUNC3 (fd[x]) >= 0);
  } else {
    fread_only[x] = 0;
  }
  FUNC0 (FUNC1 (fd[x]) >= 0);
  fd[x] = -1;

  fsize[x] = 0;
  fpos[x] = 0;
  FUNC2 (fnames[x], FUNC4 (fnames[x]) + 1);
  fnames[x] = NULL;
}