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
 scalar_t__ MY_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int engineN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* f_buff ; 
 int* f_buff_i ; 
 int* f_buff_r ; 
 int* f_buff_size ; 
 scalar_t__** f_header ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  stderr ; 
 int un ; 

int FUNC5 (int en, int id, int *a) {
  int r = f_buff_r[en];

  if (id >= r) {
    FUNC0 (id == r);
    int sz = 0;
    while (r <= un && sz + f_header[en][r] <= MY_BUFF_SIZE) {
      sz += f_header[en][r++];
    }
    if (f_header[en][r] > MY_BUFF_SIZE) {
      FUNC2 (stderr, "BIG USER DETECTED %ld, r = %d, en = %d, id= %d\n", f_header[en][r], r, en, r * engineN + en);
      FUNC1 (0);    	
    }
    FUNC4 (fd[en], f_buff[en], sz * sizeof (unsigned char));
    f_buff_i[en] = 0;
    f_buff_r[en] = r;
    f_buff_size[en] = sz;
  }


  FUNC0 (f_buff_i[en] + f_header[en][id] <= MY_BUFF_SIZE);
  FUNC3 (a, f_buff[en] + f_buff_i[en], f_header[en][id]);

  int res = f_header[en][id] / sizeof (int);

  f_buff_i[en] += f_header[en][id];
  FUNC0 (f_buff_i[en] <= f_buff_size[en]);
  return res;
}