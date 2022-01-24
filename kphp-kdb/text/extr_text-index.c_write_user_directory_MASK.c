#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t tot_users; int /*<<< orphan*/  user_list_offset; void* data_end_offset; void* extra_data_offset; } ;
struct TYPE_3__ {void* user_data_offset; } ;

/* Variables and functions */
 TYPE_2__ Header ; 
 TYPE_1__** UserDirectory ; 
 int /*<<< orphan*/  UserDirectoryData ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t tot_users ; 
 int /*<<< orphan*/  user_dir_size ; 
 void* write_pos ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4 (void) {
  Header.extra_data_offset = write_pos;
  Header.data_end_offset = write_pos;
  Header.tot_users = tot_users;

  UserDirectory[tot_users]->user_data_offset = write_pos;

  FUNC1 (Header.user_list_offset);
  FUNC0 ();
  FUNC3 (UserDirectoryData, user_dir_size);
  FUNC2 ();
}