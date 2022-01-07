
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int exit_loop ;
 int fprintf (int ,char*,char const*) ;
 int h2o_socket_close (int *) ;
 int h2o_socket_read_start (int *,int ) ;
 int on_read ;
 int stderr ;

__attribute__((used)) static void on_write(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {

        fprintf(stderr, "write failed:%s\n", err);
        h2o_socket_close(sock);
        exit_loop = 1;
        return;
    }

    h2o_socket_read_start(sock, on_read);
}
