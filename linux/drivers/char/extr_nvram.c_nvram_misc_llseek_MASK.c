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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvram_size ; 

__attribute__((used)) static loff_t FUNC1(struct file *file, loff_t offset, int origin)
{
	return FUNC0(file, offset, origin, MAX_LFS_FILESIZE,
					nvram_size);
}