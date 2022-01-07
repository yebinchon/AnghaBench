
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_socket_t ;


 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int server_flag_received ;
 int stderr ;

__attribute__((used)) static void server_on_read_second(h2o_socket_t *sock, const char *err)
{
    if (err != ((void*)0)) {
        fprintf(stderr, "connection closed unexpectedly:%s\n", err);
        exit(1);
        return;
    }

    fprintf(stderr, "received the flag\n");
    server_flag_received = 1;
}
