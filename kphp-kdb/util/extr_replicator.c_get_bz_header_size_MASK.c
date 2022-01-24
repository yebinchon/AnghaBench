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
struct kfs_file_info {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 long long FUNC1 (struct kfs_file_info*) ; 
 int FUNC2 (long long) ; 

__attribute__((used)) static int FUNC3 (struct kfs_file_info *FI) {
  FUNC0 (FI->flags & 16);
  long long orig_file_size = FUNC1 (FI);
  return FUNC2 (orig_file_size);
}