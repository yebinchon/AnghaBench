
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log {int id; struct log* path; } ;
typedef struct log gzlog ;


 int LOGID ;
 int free (struct log*) ;
 int log_close (struct log*) ;
 scalar_t__ strcmp (int ,int ) ;
 int strcpy (int ,char*) ;

int gzlog_close(gzlog *logd)
{
    struct log *log = logd;


    if (log == ((void*)0) || strcmp(log->id, LOGID))
        return -3;


    log_close(log);


    if (log->path != ((void*)0))
        free(log->path);
    strcpy(log->id, "bad");
    free(log);
    return 0;
}
