
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_entry {TYPE_1__* data; } ;
struct mem {int dummy; } ;
typedef int page_t ;
struct TYPE_2__ {int data; } ;


 int MEM_PAGES ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PAGE_BITS ;
 int PAGE_SIZE ;
 int SEEK_SET ;
 int close (int) ;
 scalar_t__ ftruncate (int,int) ;
 scalar_t__ lseek (int,int,int ) ;
 struct pt_entry* mem_pt (struct mem*,int) ;
 int open (char const*,int,int) ;
 int perror (char*) ;
 int printk (char*,int) ;
 scalar_t__ write (int,int ,int ) ;

void mem_coredump(struct mem *mem, const char *file) {
    int fd = open(file, O_CREAT | O_RDWR | O_TRUNC, 0666);
    if (fd < 0) {
        perror("open");
        return;
    }
    if (ftruncate(fd, 0xffffffff) < 0) {
        perror("ftruncate");
        return;
    }

    int pages = 0;
    for (page_t page = 0; page < MEM_PAGES; page++) {
        struct pt_entry *entry = mem_pt(mem, page);
        if (entry == ((void*)0))
            continue;
        pages++;
        if (lseek(fd, page << PAGE_BITS, SEEK_SET) < 0) {
            perror("lseek");
            return;
        }
        if (write(fd, entry->data->data, PAGE_SIZE) < 0) {
            perror("write");
            return;
        }
    }
    printk("dumped %d pages\n", pages);
    close(fd);
}
