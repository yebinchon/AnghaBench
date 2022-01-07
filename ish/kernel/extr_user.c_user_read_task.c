
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int mem; } ;
typedef scalar_t__ addr_t ;


 int MEM_READ ;
 char* mem_ptr (int ,scalar_t__,int ) ;

int user_read_task(struct task *task, addr_t addr, void *buf, size_t count) {
    char *cbuf = (char *) buf;
    size_t i = 0;
    while (i < count) {
        char *ptr = mem_ptr(task->mem, addr + i, MEM_READ);
        if (ptr == ((void*)0))
            return 1;
        cbuf[i++] = *ptr;
    }
    return 0;
}
