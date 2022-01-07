
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_h2o_access_logger_t {TYPE_1__* fh; } ;
typedef int h2o_req_t ;
typedef int h2o_logger_t ;
struct TYPE_2__ {int fd; int logconf; } ;
typedef TYPE_1__ h2o_access_log_filehandle_t ;
typedef int buf ;


 int free (char*) ;
 char* h2o_log_request (int ,int *,size_t*,char*) ;
 int write (int ,char*,size_t) ;

__attribute__((used)) static void log_access(h2o_logger_t *_self, h2o_req_t *req)
{
    struct st_h2o_access_logger_t *self = (struct st_h2o_access_logger_t *)_self;
    h2o_access_log_filehandle_t *fh = self->fh;
    char *logline, buf[4096];
    size_t len;


    len = sizeof(buf);
    logline = h2o_log_request(fh->logconf, req, &len, buf);


    write(fh->fd, logline, len);


    if (logline != buf)
        free(logline);
}
