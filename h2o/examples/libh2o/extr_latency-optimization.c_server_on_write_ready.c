
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int server_write (int *) ;
 int stderr ;

__attribute__((used)) static void server_on_write_ready(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {
        fprintf(stderr, "socket unexpected closed by peer:%s\n", err);
        exit(1);
        return;
    }
    server_write(sock);
}
