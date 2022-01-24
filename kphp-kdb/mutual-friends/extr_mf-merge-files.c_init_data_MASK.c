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
 int MY_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int engineN ; 
 int exceptionsI ; 
 char* exceptions_name ; 
 void** f_buff ; 
 void* f_buff_i ; 
 void* f_buff_r ; 
 void* f_buff_size ; 
 int** f_header ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,long long,long long) ; 
 int friendsI ; 
 char* friends_name ; 
 long long* fsize ; 
 scalar_t__ FUNC2 (int,char*,int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*) ; 
 int un ; 

void FUNC8 (void) {
  char fname[50];
  int i;

  f_buff = FUNC3 (sizeof (unsigned char *) * engineN);
  f_header = FUNC3 (sizeof (int *) * engineN);

  f_buff_size = FUNC4 (sizeof (int) * engineN);
  f_buff_r = FUNC4 (sizeof (int) * engineN);
  f_buff_i = FUNC4 (sizeof (int) * engineN);

  for (i = 0; i < engineN; i++) {
    FUNC6 (fname, "from%03d", i);
    if (FUNC2 (i, fname, -1) < 0) {
      fd[i] = -1;
      continue;
    }
    f_buff[i] = FUNC3 (sizeof (unsigned char) * MY_BUFF_SIZE);

    long long fsz;
    FUNC5 (fd[i], &fsz, sizeof (long long));
    if (fsz != fsize[i]) {
      FUNC1 (stderr, "something wrong with file <%s> : wrong size %lld (%lld expected)\n", fname, fsize[i], fsz);
    }
    FUNC0 (fsz == fsize[i]);


    int cnt;
    FUNC5 (fd[i], &cnt, sizeof (int));

    FUNC0 (cnt == un + 1);
    f_header[i] = FUNC3 (sizeof (int) * cnt);
    FUNC5 (fd[i], f_header[i], sizeof (int) * cnt);
  }
  if (FUNC7 (friends_name) > 0) {
    FUNC2 (friendsI, friends_name, 0);
  }
  if (FUNC7 (exceptions_name) > 0) {
    FUNC2 (exceptionsI, exceptions_name, 0);
  }
}