
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct task {TYPE_1__* mm; } ;
struct proc_entry {int dummy; } ;
struct proc_data {int dummy; } ;
struct TYPE_2__ {size_t argv_end; size_t argv_start; } ;


 int _ENOMEM ;
 int _ESRCH ;
 int free (int *) ;
 int * malloc (size_t) ;
 int proc_buf_write (struct proc_data*,int *,size_t) ;
 struct task* proc_get_task (struct proc_entry*) ;
 int proc_put_task (struct task*) ;
 int user_read_task (struct task*,size_t,int *,size_t) ;

__attribute__((used)) static int proc_pid_cmdline_show(struct proc_entry *entry, struct proc_data *buf) {
    struct task *task = proc_get_task(entry);
    if (task == ((void*)0))
        return _ESRCH;
    size_t size = task->mm->argv_end - task->mm->argv_start;
    uint8_t *data = malloc(size);
    if (data == ((void*)0))
        return _ENOMEM;
    int fail = user_read_task(task, task->mm->argv_start, data, size);
    proc_buf_write(buf, data, size);
    free(data);
    proc_put_task(task);
    if (fail)
        return 0;
    return size;
}
