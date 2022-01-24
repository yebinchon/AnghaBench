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
 int FUNC0 (unsigned char*,int,unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3 (unsigned char *old_buff, int old_buff_size, unsigned char *patch_buff, int patch_buff_size, unsigned char *new_buff, int new_buff_size) {
  dyn_mark_t mrk;
  FUNC1 (mrk);
  int r = FUNC0 (old_buff, old_buff_size, patch_buff, patch_buff_size, new_buff, new_buff_size);
  FUNC2 (mrk);
  return r;
}