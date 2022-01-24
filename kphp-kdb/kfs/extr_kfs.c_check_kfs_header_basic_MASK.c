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
struct kfs_file_header {scalar_t__ magic; scalar_t__ header_crc32; scalar_t__ kfs_version; } ;

/* Variables and functions */
 scalar_t__ KFS_MAGIC ; 
 scalar_t__ KFS_V01 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kfs_file_header*,int) ; 

__attribute__((used)) static int FUNC2 (struct kfs_file_header *H) {
  FUNC0 (H->magic == KFS_MAGIC);
  if (FUNC1 (H, 4092) != H->header_crc32) {
    return -1;
  }
  if (H->kfs_version != KFS_V01) {
    return -1;
  }
  return 0;
}