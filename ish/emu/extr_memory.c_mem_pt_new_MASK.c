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
struct pt_entry {int dummy; } ;
struct mem {int /*<<< orphan*/  pgdir_used; struct pt_entry** pgdir; } ;
typedef  int /*<<< orphan*/  page_t ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_PGDIR_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 struct pt_entry* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct pt_entry *FUNC3(struct mem *mem, page_t page) {
    struct pt_entry *pgdir = mem->pgdir[FUNC1(page)];
    if (pgdir == NULL) {
        pgdir = mem->pgdir[FUNC1(page)] = FUNC2(MEM_PGDIR_SIZE, sizeof(struct pt_entry));
        mem->pgdir_used++;
    }
    return &pgdir[FUNC0(page)];
}