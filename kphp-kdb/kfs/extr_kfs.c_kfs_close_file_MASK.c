#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* kfs_file_handle_t ;
struct TYPE_4__ {int fd; scalar_t__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4 (kfs_file_handle_t F, int close_handle) {
  if (!F) {
    return 0;
  }
  if (F->fd >= 0) {
    if (close_handle) {
      FUNC0 (FUNC1 (F->fd) >= 0);
    }
    F->fd = -1;
  }
  if (F->info) {
    FUNC2 (F->info);
    F->info = 0;
  }
  FUNC3 (F);
  return 0;
}