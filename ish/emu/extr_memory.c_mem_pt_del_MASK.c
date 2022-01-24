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
struct pt_entry {int /*<<< orphan*/ * data; } ;
struct mem {int dummy; } ;
typedef  int /*<<< orphan*/  page_t ;

/* Variables and functions */
 struct pt_entry* FUNC0 (struct mem*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mem *mem, page_t page) {
    struct pt_entry *entry = FUNC0(mem, page);
    if (entry != NULL)
        entry->data = NULL;
}