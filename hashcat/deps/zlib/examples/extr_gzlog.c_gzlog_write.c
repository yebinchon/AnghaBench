
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log {int last; int first; int stored; int path; int end; int id; } ;
typedef struct log gzlog ;


 int APPEND_OP ;
 int BAIL (int) ;
 int LOGID ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int TRIGGER ;
 int close (int) ;
 int gzlog_compress (struct log*) ;
 scalar_t__ log_append (struct log*,void*,size_t) ;
 scalar_t__ log_check (struct log*) ;
 scalar_t__ log_mark (struct log*,int ) ;
 scalar_t__ log_open (struct log*) ;
 int log_touch (struct log*) ;
 int open (int ,int,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int strcpy (int ,char*) ;
 scalar_t__ write (int,void*,size_t) ;

int gzlog_write(gzlog *logd, void *data, size_t len)
{
    int fd, ret;
    struct log *log = logd;


    if (log == ((void*)0) || strcmp(log->id, LOGID))
        return -3;
    if (data == ((void*)0) || len <= 0)
        return 0;




    if (log_check(log) && log_open(log))
        return -1;


    strcpy(log->end, ".add");
    fd = open(log->path, O_WRONLY | O_CREAT | O_TRUNC, 0644);
    if (fd < 0)
        return -1;
    ret = (size_t)write(fd, data, len) != len;
    if (ret | close(fd))
        return -1;
    log_touch(log);


    if (log_mark(log, APPEND_OP))
        return -1;
    BAIL(8);


    if (log_append(log, data, len))
        return -1;


    if (((log->last - log->first) >> 10) + (log->stored >> 10) < TRIGGER)
        return 0;


    return gzlog_compress(log);
}
