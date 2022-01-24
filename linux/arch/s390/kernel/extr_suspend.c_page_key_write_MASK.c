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
struct page {int dummy; } ;
struct TYPE_2__ {unsigned char* data; struct TYPE_2__* next; } ;

/* Variables and functions */
 size_t PAGE_KEY_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 TYPE_1__* page_key_rp ; 
 size_t page_key_rx ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned char,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (void*) ; 

void FUNC4(void *address)
{
	struct page *page;
	unsigned char key;

	key = page_key_rp->data[page_key_rx];
	FUNC2((unsigned long) address, key & 0x7f, 0);
	page = FUNC3(address);
	if (key & 0x80)
		FUNC1(page, 0);
	else
		FUNC0(page, 0);
	if (++page_key_rx >= PAGE_KEY_DATA_SIZE)
		return;
	page_key_rp = page_key_rp->next;
	page_key_rx = 0;
}