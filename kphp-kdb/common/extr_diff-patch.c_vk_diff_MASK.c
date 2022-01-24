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
typedef  int /*<<< orphan*/  dyn_mark_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned char*,int,unsigned char*,int,unsigned char*,int,int,double) ; 

int FUNC3 (unsigned char *old_buff, int old_buff_size, unsigned char *new_buff, int new_buff_size, unsigned char *patch_buff, int patch_buff_size, int compress_level, double timeout) {
  dyn_mark_t mrk;
  FUNC0 (mrk);
  int r = FUNC2 (old_buff, old_buff_size, new_buff, new_buff_size, patch_buff, patch_buff_size, compress_level, timeout);
  FUNC1 (mrk);
  return r;
}