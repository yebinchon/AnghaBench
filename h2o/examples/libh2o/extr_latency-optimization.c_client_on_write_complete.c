
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int h2o_socket_close (int *) ;
 int stderr ;

__attribute__((used)) static void client_on_write_complete(h2o_socket_t *sock, const char *err)
{
    if (err == ((void*)0))
        return;

    fprintf(stderr, "write failed:%s\n", err);
    h2o_socket_close(sock);
    exit(1);
}
