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
struct kfs_file_header {int finished; int /*<<< orphan*/  kfs_version; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  KFS_MAGIC ; 
 int /*<<< orphan*/  KFS_V01 ; 
 int /*<<< orphan*/  FUNC0 (struct kfs_file_header*,int /*<<< orphan*/ ,int) ; 

void FUNC1 (struct kfs_file_header *H) {
  FUNC0 (H, 0, 4096);
  H->magic = KFS_MAGIC;
  H->kfs_version = KFS_V01;
  H->finished = -1;
}