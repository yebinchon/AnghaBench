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
 int engineF ; 
 int engineN ; 
 char** f_buff ; 
 int* f_buff_r ; 
 int* f_buff_size ; 
 int* fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 scalar_t__ left_files ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC4 (void) {
  int i;
  while (left_files) {
    int min_time = 2147483637, now, size;
    for (i = engineF; i < engineN; i++) {
      if (fd[i] >= 0 && f_buff_size[i] - f_buff_r[i] < 2 * (int)sizeof (int) && FUNC2 (i) == -1) {
        fd[i] = -1;
        left_files--;
        FUNC0 (f_buff_size[i] == f_buff_r[i]);
      }
    }

    for (i = engineF; i < engineN; i++) {
      if (fd[i] >= 0) {
        char *buff = f_buff[i] + f_buff_r[i];
        now = ((int *)buff)[0];
        size = ((int *)buff)[1];
//        fprintf (stderr, "%d %d %d\n", i, now, size);
        if (f_buff_size[i] - f_buff_r[i] < 2 * (int)sizeof (int) + size) {
          if (FUNC2 (i) == -1 || f_buff_size[i] - f_buff_r[i] < 2 * (int)sizeof (int) + size) {
            FUNC1 (stderr, "Dump %d is broken. It contains event of size %d. f_buff_size = %d, f_buff_r = %d.\n", i, size, f_buff_size[i], f_buff_r[i]);
            FUNC0 (0);
          }
        }
        if (now < min_time) {
          min_time = now;
        }
      }
    }

    for (i = engineF; i < engineN; i++) {
      if (fd[i] >= 0) {
        char *buff = f_buff[i] + f_buff_r[i];
        now = ((int *)buff)[0];
        if (now == min_time) {
          size = ((int *)buff)[1];
          FUNC3 (buff, 2 * sizeof (int) + size);
          f_buff_r[i] += 2 * sizeof (int) + size;
        }
      }
    }
  }
}