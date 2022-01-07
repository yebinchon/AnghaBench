
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_logconf_t ;
struct TYPE_4__ {int fd; int * logconf; } ;
typedef TYPE_1__ h2o_access_log_filehandle_t ;


 int h2o_access_log_open_log (char const*) ;
 int h2o_error_printf (char*,char*) ;
 int * h2o_logconf_compile (char const*,int,char*) ;
 int h2o_logconf_dispose (int *) ;
 TYPE_1__* h2o_mem_alloc_shared (int *,int,int ) ;
 int on_dispose_handle ;

h2o_access_log_filehandle_t *h2o_access_log_open_handle(const char *path, const char *fmt, int escape)
{
    h2o_logconf_t *logconf;
    int fd;
    h2o_access_log_filehandle_t *fh;
    char errbuf[256];


    if (fmt == ((void*)0))
        fmt = "%h %l %u %t \"%r\" %s %b \"%{Referer}i\" \"%{User-agent}i\"";
    if ((logconf = h2o_logconf_compile(fmt, escape, errbuf)) == ((void*)0)) {
        h2o_error_printf("%s\n", errbuf);
        return ((void*)0);
    }


    if ((fd = h2o_access_log_open_log(path)) == -1) {
        h2o_logconf_dispose(logconf);
        return ((void*)0);
    }

    fh = h2o_mem_alloc_shared(((void*)0), sizeof(*fh), on_dispose_handle);
    fh->logconf = logconf;
    fh->fd = fd;
    return fh;
}
