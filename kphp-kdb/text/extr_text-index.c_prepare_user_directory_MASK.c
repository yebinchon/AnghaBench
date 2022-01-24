#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file_user_list_entry {long long user_id; } ;
struct TYPE_2__ {int tot_users; void* user_data_offset; void* user_list_offset; } ;

/* Variables and functions */
 TYPE_1__ Header ; 
 int MAX_USERS ; 
 scalar_t__* User ; 
 struct file_user_list_entry** UserDirectory ; 
 scalar_t__ UserDirectoryData ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ history_enabled ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int search_enabled ; 
 int sublists_num ; 
 int tot_users ; 
 long long FUNC2 (int) ; 
 int user_dir_size ; 
 void* write_pos ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 struct file_user_list_entry** FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7 (void) {
  int i, j;
  int entry_size = sizeof (struct file_user_list_entry) + 4 * (sublists_num + (history_enabled ? 3 : search_enabled));
  user_dir_size = tot_users * entry_size + 16;
  Header.user_list_offset = write_pos;
  Header.tot_users = tot_users;
  Header.user_data_offset = write_pos + user_dir_size + 4;

  UserDirectoryData = FUNC6 (user_dir_size);
  UserDirectory = FUNC5 ((tot_users + 1) * sizeof (void *));

  for (j = 0; j <= tot_users; j++) {
    UserDirectory[j] = (struct file_user_list_entry *) (UserDirectoryData + entry_size * j);
  }

  for (i = j = 0; i < MAX_USERS; i++) {
    if (User[i]) {
      UserDirectory[j++]->user_id = FUNC2 (i);
    }
  }
  FUNC0 (j == tot_users);
  UserDirectory[j]->user_id = ~(-1LL << 63);
      
  FUNC4 (UserDirectoryData, user_dir_size);
  FUNC1 ();
  FUNC3 ();
}