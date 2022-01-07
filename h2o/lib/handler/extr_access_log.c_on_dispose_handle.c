
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int logconf; } ;
typedef TYPE_1__ h2o_access_log_filehandle_t ;


 int close (int ) ;
 int h2o_logconf_dispose (int ) ;

__attribute__((used)) static void on_dispose_handle(void *_fh)
{
    h2o_access_log_filehandle_t *fh = _fh;

    h2o_logconf_dispose(fh->logconf);
    close(fh->fd);
}
