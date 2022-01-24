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
struct gendisk {struct cardinfo* private_data; } ;
struct cardinfo {int mm_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gendisk*,int) ; 

__attribute__((used)) static int FUNC1(struct gendisk *disk)
{
	struct cardinfo *card = disk->private_data;
	FUNC0(disk, card->mm_size << 1);
	return 0;
}