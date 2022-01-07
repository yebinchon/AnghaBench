
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ipc_socket_path; } ;


 int SHUTDOWN_REASON_EXIT ;
 int __lsan_do_leak_check () ;
 TYPE_1__ config ;
 int conn ;
 int ev_loop_destroy (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int ipc_shutdown (int ,int) ;
 int main_loop ;
 int shm_unlink (char*) ;
 char* shmlogname ;
 int stderr ;
 int unlink (int ) ;
 int xcb_disconnect (int ) ;

__attribute__((used)) static void i3_exit(void) {
    if (*shmlogname != '\0') {
        fprintf(stderr, "Closing SHM log \"%s\"\n", shmlogname);
        fflush(stderr);
        shm_unlink(shmlogname);
    }
    ipc_shutdown(SHUTDOWN_REASON_EXIT, -1);
    unlink(config.ipc_socket_path);
    xcb_disconnect(conn);
}
