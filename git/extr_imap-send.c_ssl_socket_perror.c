
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ERR_error_string (int ,int *) ;
 int ERR_get_error () ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;

__attribute__((used)) static void ssl_socket_perror(const char *func)
{
 fprintf(stderr, "%s: %s\n", func, ERR_error_string(ERR_get_error(), ((void*)0)));
}
