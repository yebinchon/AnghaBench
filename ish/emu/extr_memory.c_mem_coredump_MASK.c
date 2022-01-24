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
struct pt_entry {TYPE_1__* data; } ;
struct mem {int dummy; } ;
typedef  int page_t ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int MEM_PAGES ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PAGE_BITS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct pt_entry* FUNC3 (struct mem*,int) ; 
 int FUNC4 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct mem *mem, const char *file) {
    int fd = FUNC4(file, O_CREAT | O_RDWR | O_TRUNC, 0666);
    if (fd < 0) {
        FUNC5("open");
        return;
    }
    if (FUNC1(fd, 0xffffffff) < 0) {
        FUNC5("ftruncate");
        return;
    }

    int pages = 0;
    for (page_t page = 0; page < MEM_PAGES; page++) {
        struct pt_entry *entry = FUNC3(mem, page);
        if (entry == NULL)
            continue;
        pages++;
        if (FUNC2(fd, page << PAGE_BITS, SEEK_SET) < 0) {
            FUNC5("lseek");
            return;
        }
        if (FUNC7(fd, entry->data->data, PAGE_SIZE) < 0) {
            FUNC5("write");
            return;
        }
    }
    FUNC6("dumped %d pages\n", pages);
    FUNC0(fd);
}