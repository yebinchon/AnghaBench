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
struct page_key_data {void* next; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_KEY_DATA_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* page_key_data ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* page_key_rp ; 
 scalar_t__ page_key_rx ; 
 void* page_key_wp ; 
 scalar_t__ page_key_wx ; 

int FUNC3(unsigned long pages)
{
	struct page_key_data *pk;
	unsigned long size;

	size = FUNC0(pages, PAGE_KEY_DATA_SIZE);
	while (size--) {
		pk = (struct page_key_data *) FUNC1(GFP_KERNEL);
		if (!pk) {
			FUNC2();
			return -ENOMEM;
		}
		pk->next = page_key_data;
		page_key_data = pk;
	}
	page_key_rp = page_key_wp = page_key_data;
	page_key_rx = page_key_wx = 0;
	return 0;
}