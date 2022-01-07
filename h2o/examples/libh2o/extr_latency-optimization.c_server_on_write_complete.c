
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int h2o_socket_notify_write (int *,int ) ;
 int server_on_write_ready ;
 int stderr ;

__attribute__((used)) static void server_on_write_complete(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {
        fprintf(stderr, "write failed:%s\n", err);
        exit(1);
        return;
    }
    h2o_socket_notify_write(sock, server_on_write_ready);
}
