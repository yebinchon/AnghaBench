
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int _SC_OPEN_MAX ;
 int accept (int,int *,int *) ;
 int close (int) ;
 int daemon_close_notify_thread ;
 int daemon_conn_thread ;
 int dief (char*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int) ;
 scalar_t__ pthread_create (int *,int *,int ,char*) ;
 scalar_t__ sysconf (int ) ;

__attribute__((used)) __attribute__((noreturn)) static void daemon_main(int listen_fd, int close_notify_fd, const char *tempdir)
{
    pthread_t tid;
    pthread_attr_t thattr;
    int sock_fd;

    {
        int fd = (int)sysconf(_SC_OPEN_MAX) - 1;
        for (; fd > 2; --fd) {
            if (fd == listen_fd || fd == close_notify_fd)
                continue;
            close(fd);
        }
    }

    pthread_attr_init(&thattr);
    pthread_attr_setdetachstate(&thattr, 1);

    if (pthread_create(&tid, &thattr, daemon_close_notify_thread, (char *)((void*)0) + close_notify_fd) != 0)
        dief("pthread_create failed");

    while (1) {
        while ((sock_fd = accept(listen_fd, ((void*)0), ((void*)0))) == -1)
            ;
        if (pthread_create(&tid, &thattr, daemon_conn_thread, (char *)((void*)0) + sock_fd) != 0)
            dief("pthread_create failed");
    }
}
