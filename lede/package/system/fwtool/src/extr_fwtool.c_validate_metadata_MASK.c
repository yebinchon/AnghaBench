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
struct fwimage_header {scalar_t__ version; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(struct fwimage_header *hdr, int data_len)
{
	 if (hdr->version != 0)
		 return 1;
	 return 0;
}