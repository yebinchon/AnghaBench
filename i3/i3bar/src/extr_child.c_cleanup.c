
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i3bar_child ;


 int FREE (int *) ;
 int child ;
 int * child_sig ;
 int ev_child_stop (int ,int *) ;
 int ev_io_stop (int ,int *) ;
 int main_loop ;
 int memset (int *,int ,int) ;
 int * stdin_io ;

__attribute__((used)) static void cleanup(void) {
    if (stdin_io != ((void*)0)) {
        ev_io_stop(main_loop, stdin_io);
        FREE(stdin_io);
    }

    if (child_sig != ((void*)0)) {
        ev_child_stop(main_loop, child_sig);
        FREE(child_sig);
    }

    memset(&child, 0, sizeof(i3bar_child));
}
