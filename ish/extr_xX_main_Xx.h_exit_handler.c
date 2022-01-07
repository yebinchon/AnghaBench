
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int * parent; } ;


 int exit (int) ;
 int raise (int) ;

__attribute__((used)) static void exit_handler(struct task *task, int code) {
    if (task->parent != ((void*)0))
        return;
    if (code & 0xff)
        raise(code & 0xff);
    else
        exit(code >> 8);
}
