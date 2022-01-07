
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_fastcgi_handler_t ;


 int close (int) ;

__attribute__((used)) static void spawnproc_on_dispose(h2o_fastcgi_handler_t *handler, void *data)
{
    int pipe_fd = (int)((char *)data - (char *)((void*)0));
    close(pipe_fd);
}
